## Build image for pgwatch2

Building of own AGI image is necessary because of missing permissions on two files.

Build with

```
docker build -t sogis/pgwatch2-nonroot:latest .
```
