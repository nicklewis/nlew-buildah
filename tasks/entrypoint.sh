#!/bin/bash

buildah config --entrypoint "${PT_command}" "${PT_image?}"
