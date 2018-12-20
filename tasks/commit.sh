#!/bin/bash

buildah commit "${PT_image?}" "${PT_name?}"
