#!/bin/bash
set -ex

cd /data
fpm-cook clean
fpm-cook
