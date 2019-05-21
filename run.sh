#!/bin/bash

images=( full postgres )
for i in "${images[@]}"
do
  mkdir -p images/$i
  erb image_name=$i Dockerfile.erb > images/$i/Dockerfile
done
