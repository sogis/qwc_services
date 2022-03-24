## Set up local development environment for QGIS Server

### QGIS Server und Entwicklungs-Dbs starten

Mit docker-compose werden insgesamt drei Docker-DB-Server sowie ein QGIS Server Container gestartet.
```
docker-compose up --build
```
(Die Option --build kann man auch weglassen. Sie ist nur dann nötig, wenn am Dockerfile oder am Basis-Image etwas geändert hat.)

Nun können in dne DBs nach Belieben Schemas angelegt und Daten importiert werden (z.B. durch Ausführen von SQL Skripten oder durch Restoren aus einem Dump).

Die Daten bleiben nach `docker-compose stop` oder `docker-compose down` erhalten. Um wieder mit leeren DBs zu starten:
```
docker-compose down
docker-compose prune
```
Dabei werden alle Docker Volumes, die an einen Container angebunden sind, unwiderruflich gelöscht.

Die DBs sind von der lokalen Maschine mit folgenden Verbindungsparametern erreichbar:

**Edit-DB**

* Hostname: `localhost`
* Port: `54321`
* DB-Name: `edit`
* Benutzer: `gretl` (für Lese- und Schreibzugriff), `ogc-server` (Zugriff von QGIS Server) oder `admin` (zum Anlegen von Schemen, Tabellen usw.); das Passwort lautet jeweils gleich wie der Benutzername.

**Publikations-DB**

* Hostname: `localhost`
* Port: `54322`
* DB-Name: `pub`
* Benutzer: `gretl` (für Lese- und Schreibzugriff), `ogc_server` (Zugriff von QGIS Server) oder `admin` (zum Anlegen von Schemen, Tabellen usw.); das Passwort lautet jeweils gleich wie der Benutzername.

**Oereb-DB**

* Hostname: `localhost`
* Port: `54323`
* DB-Name: `oereb`
* Benutzer: `gretl` (für Lese- und Schreibzugriff), `ogc_server` (Zugriff von QGIS Server) oder `admin` (zum Anlegen von Schemen, Tabellen usw.); das Passwort lautet jeweils gleich wie der Benutzername.

### Die Rollen (Benutzer und Gruppen) der produktiven DBs importieren

Um auch die in den produktiven DBs vorhandenen DB-Rollen in den Entwicklungs-DBs verfügbar zu haben, kopiert man die Datei mit den DB-Rollen (die "Globals") vom geoutil-Server auf seine lokale Maschine, entfernt mit einem `sed`-Befehl diejenigen Zeilen, die Rollen enthalten, die in den Entwicklungs-DBs bereits automatisch angelegt werden, und importiert die globals dann mit `psql` in die Entwicklungs-DBs:

```
scp geoutil.verw.rootso.org:/opt/workspace/dbdump/globals_geodb.rootso.org.dmp /tmp
sed -E -i.bak '/^CREATE ROLE (postgres|admin|gretl|ogc_server)\;/d; /^ALTER ROLE (postgres|admin|gretl|ogc_server) /d' /tmp/globals_geodb.rootso.org.dmp
psql --single-transaction -h localhost -p 54321 -d edit -U postgres -f /tmp/globals_geodb.rootso.org.dmp
psql --single-transaction -h localhost -p 54322 -d pub -U postgres -f /tmp/globals_geodb.rootso.org.dmp
psql --single-transaction -h localhost -p 54323 -d oereb -U postgres -f /tmp/globals_geodb.rootso.org.dmp
```

Für den Fall, dass `psql` auf der lokalen Maschine nicht installiert ist, kopiert man stattdessen die Globals zuerst in den laufenden Container und führt danach den `psql`-Befehl innerhalb des Containers aus:

```
docker cp /tmp/globals_geodb.rootso.org.dmp sogis-postgis-pub:/tmp
docker exec -e PGHOST=/tmp -it sogis-postgis-pub psql --single-transaction -d pub -f /tmp/globals_geodb.rootso.org.dmp
docker cp /tmp/globals_geodb.rootso.org.dmp sogis-postgis-edit:/tmp
docker exec -e PGHOST=/tmp -it sogis-postgis-edit psql --single-transaction -d edit -f /tmp/globals_geodb.rootso.org.dmp
docker cp /tmp/globals_geodb.rootso.org.dmp sogis-postgis-oereb:/tmp
docker exec -e PGHOST=/tmp -it sogis-postgis-oereb psql --single-transaction -d oereb -f /tmp/globals_geodb.rootso.org.dmp
```

### Daten der produktiven DBs importieren

Um die in den produktiven DBs vorhandenen Daten in den Entwicklungs-DBs verfügbar zu machen, kopiert man die Dumps der entsprechenden DB vom geoutil-Server auf seine lokale Maschine und importiert diese
dann mit `psql` in die Entwicklungs-DBs. Es können natürlich auch nur einzelne Schemen 

```
scp geoutil.verw.rootso.org:/opt/workspace/dbdump/edit_geodb.rootso.org.dmp /tmp
scp geoutil.verw.rootso.org:/opt/workspace/dbdump/pub_geodb.rootso.org.dmp /tmp
scp geoutil.verw.rootso.org:/opt/workspace/dbdump/oereb_geodb.rootso.org.dmp /tmp
pg_restore --single-transaction -h localhost -p 54321 -d edit -U postgres -f /tmp/edit_geodb.rootso.org.dmp
pg_restore --single-transaction -h localhost -p 54322 -d pub -U postgres -f /tmp/pub_geodb.rootso.org.dmp
pg_restore --single-transaction -h localhost -p 54323 -d oereb -U postgres -f /tmp/oereb_geodb.rootso.org.dmp
```

Für den Fall, dass `pg_restore` auf der lokalen Maschine nicht installiert ist wie oben bei den Globals die Dumps zuerst in den laufenden Container kopieren und danach den `pg_restore`-Befehl innerhalb des Containers ausführen.

### Notwendige Dateien in QGIS Server importieren

QGIS Server benötigt verschiedene Dateien, die im Container unter `/data` abgelegt sind. Als `/data` wird `../volumes/qgs-resources` in den Container gemounted. Alle notwendigen Dateien müssen 
also unter `../volumes/qgs-resources` abgelegt werden. Man kann sich diese (sofern Zugang zu Openshift vorhanden ansonsten GDI fragen) z.B. direkt aus dem produktiven QGIS Server Pod dorthin kopieren

```
oc rsync qgis-server-podname:/data pfad/zu/volumes/qgs-resources
```

Man kann natürlich auch individuelle qgs-Files unter `volumes/qgs-resources` ablegen.

Unter `/geodata` werden im Container die Rasterdaten abgelegt. Auch diese werden über `../volumes/geodata` in den Container gemounted. Falls also Rasterdaten benötigt werden müssen diese unter 
`volumes/geodata` abgelegt werden.
