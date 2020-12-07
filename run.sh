#!/bin/bash
# Run container, remove it when completed, mount local dir to /app, name it with the directory name
docker run -it -p 127.0.0.1:9090:8080 --rm --name jbossas6 jbossas:6.1.0 
