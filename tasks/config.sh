#!/bin/bash

buildah config "--${PT_config?}" "${PT_value?}" "${PT_image?}"
