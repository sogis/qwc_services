SO!MAP Config Generator
=======================

Generate JSON files for service configs and permissions from a SO!MAP ConfigDB, and write QGIS project files.

Can be run from command line or as a service.

 
Setup
-----

Create a config file `configGeneratorConfig.json` for the ConfigGenerator (see below).


Configuration
-------------

* [JSON schema](schemas/sogis-config-generator.json)

Example `configGeneratorConfig.json`:
```json
{
  "$schema": "https://git.sourcepole.ch/ktso/somap/-/raw/master/config-generator/schemas/sogis-config-generator.json",
  "service": "config-generator",
  "config": {
    "config_db_url": "postgresql:///?service=soconfig_services",
    "config_path": "../docker/volumes/config/",
    "default_qgis_server_url": "http://localhost:8001/ows/"
  },
  "services": [
    {
      "name": "ogc",
      "config": {
        "default_ogc_server_url": "http://localhost:8001/ows/"
      },
      "resources": {
        "wms_services": [
          {
            "name": "somap",
            "online_resources": {
              "service": "https://geo.so.ch/ows/somap",
              "feature_info": "https://geo.so.ch/api/v1/featureinfo/somap",
              "legend": "https://geo.so.ch/api/v1/featureinfo/somap"
            }
          }
        ],
        "wfs_services": [
          {
            "name": "somap",
            "online_resource": "https://geo.so.ch/api/wfs"
          }
        ]
      }
    },
    {
      "name": "featureInfo",
      "config": {
        "default_qgis_server_url": "http://localhost:8001/ows/",
        "default_info_template": "<table>...</table>"
      }
    }
  ],
  "qgs_writer": {
    "project_output_dir": "../docker/volumes/qgs-resources/",
    "default_extent": [2590983, 1212806, 2646267, 1262755],
    "#default_raster_extent": [2590000, 1210000, 2650000, 1270000],
    "selection_color": [255, 255, 0, 255]
  }
}
```

For a full example see [docker/configGeneratorConfig.json](../docker/configGeneratorConfig.json).


Usage
-----

### Script

Show command options:

    python config_generator.py --help

Generate both service configs and permissions:

    python config_generator.py ./configGeneratorConfig.json all

Generate service config files:

    python config_generator.py ./configGeneratorConfig.json service_configs

Generate permissions file:

    python config_generator.py ./configGeneratorConfig.json permissions

Write QGIS project files:

    python config_generator.py ./configGeneratorConfig.json qgs

### Docker container

**NOTE:** Requires write permissions for config-generator docker user (`www-data`) in `config_path` and `project_output_dir` for writing service configs and permissions, and generating QGIS projects.

    cd ../docker
    docker-compose run config-generator /configGeneratorConfig.json all

### Service

Set the `CONFIG_GENERATOR_CONFIG` environment variable to the config file path (default: `/configGeneratorConfig.json`).

Base URL:

    http://localhost:5032/

Generate both service configs and permissions:

    curl -X POST "http://localhost:5032/generate_configs"

Write QGIS project files:

    curl -X POST "http://localhost:5032/update_qgs"


Development
-----------

Create a virtual environment:

    virtualenv --python=/usr/bin/python3 .venv

Activate virtual environment:

    source .venv/bin/activate

Install requirements:

    pip install -r requirements.txt

Run Test-DB and QGIS Server:

    cd ../docker && docker-compose up -d qgis-server

Generate service configs and permissions for Docker:

    python config_generator.py ../docker/configGeneratorConfig.json all

Write QGIS project files for Docker:

    python config_generator.py ../docker/configGeneratorConfig.json qgs

Start local service:

    CONFIG_GENERATOR_CONFIG=../docker/configGeneratorConfig.json python server.py

Integration in AGI environment
------------------------------

Adapt Dockerfile for use of config-generator in Openshift.

Build config-generator Image => Change Tag if needed

    docker build -t config-generator:latest .

Tag Image to push in sogis Repo => change Tag if needed

    docker tag config-generator:latest sogis/config-generator:latest 

    docker push sogis/config-generator:latest

First Install in Openshift project (gdi-test)

    Create a secret for the pg_service file

    oc create secret generic config-generator-pg-service --from-file=pg_service.conf -n gdi-test

    docker tag config-generator:latest docker-registry-default.dev.so.ch/gdi-test/config-generator

    oc project gdi-test

    docker push docker-registry-default.dev.so.ch/gdi-test/config-generator

    oc new-app config-generator

Update ImageStream in Openshift (For Test Environment)

    oc project gdi-test

    oc tag --source=docker sogis/config-generator:latest config-generator:latest
