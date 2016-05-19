#!/bin/sh

set -ex

build(){
	dist=$1
	docker build --tag=package_build/${dist} docker/${dist}/
	docker run --rm -v $(pwd):/data -e DIST=${dist} package_build/${dist} /data/entry.sh
}

build 'ubuntu14.04'
