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

Die DBs sind mit folgenden Verbindungsparametern erreichbar:

**Edit-DB**

* Hostname: `localhost`
* Port: `54321`
* DB-Name: `edit`
* Benutzer: `gretl` (für Lese- und Schreibzugriff), `ogc-server` (Zugriff von QGIS Server' oder `admin` (zum Anlegen von Schemen, Tabellen usw.); das Passwort lautet jeweils gleich wie der Benutzername.
