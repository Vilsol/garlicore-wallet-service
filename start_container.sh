#!/bin/bash

docker build -t bws .

docker rm -f bws

docker run -d --link mongo -p 3232:3232 --name bws bws 