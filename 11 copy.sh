#!/bin/bash
mypath=$(dirname $0)
sed 's/:/=/' < $mypath/config.src
