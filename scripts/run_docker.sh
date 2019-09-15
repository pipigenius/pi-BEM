#!/bin/bash
CMD=`grep -e '- ' .travis.yml | sed 's/- //'`
docker run  --user $(id -u):$(id -g) -i -t --rm -P -v `pwd`:/app:rw mathlab/deal2lkit:v9.1.1-debugrelease  /bin/sh -c "cd /app; $CMD"
