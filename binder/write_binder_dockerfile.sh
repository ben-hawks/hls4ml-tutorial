#!/bin/bash
#To make this repo work and uses the existing Docker image within a BinderHub instance, we need to create a shim Dockerfile that Binder/repo2docker picks up on. 
#This is intended to be ran via a github action
rm -f $GITHUB_WORKSPACE/binder/Dockerfile* || true
echo "FROM $IMAGE_TAG:$COMMIT_SHA" > $GITHUB_WORKSPACE/binder/Dockerfile