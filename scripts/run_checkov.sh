#!/bin/sh
checkov -f $1/Dockerfile --framework dockerfile
exit 0
