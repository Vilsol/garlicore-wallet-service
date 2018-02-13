#!/bin/bash -ex

tag=ryanshaw/gws

docker build -t $tag .

docker push $tag
