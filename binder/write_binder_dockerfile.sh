#!/bin/bash
#To make this repo work and uses the existing Docker image within a BinderHub instance, we need to create a shim Dockerfile that Binder/repo2docker picks up on. 
#This is intended to be ran via a github action
cd ./binder
rm -rf Dockerfile
echo "FROM $IMAGE_TAG:$COMMIT_SHA" > Dockerfile
