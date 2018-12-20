#!/bin/bash

image=$(buildah from "${PT_base?}")

echo '{"id": "'$image'"}'
