#!/bin/bash
#
# runs an mkdocs site for a random amount of time

set -e -o pipefail

( sleep $((60 + RANDOM % 3600)) && pkill mkdocs ) &

cd /tmp
mkdir /tmp/docs

wget -O - https://github.com/nihr43/docs/archive/master.tar.gz \
  | tar -zxf - -C /tmp/docs --strip-components=1

cat > mkdocs.yml << EOF
site_name: data.from.io
theme: mkdocs

markdown_extensions:
  - admonition
EOF

mkdocs build
mkdocs serve -a 0.0.0.0:8000
