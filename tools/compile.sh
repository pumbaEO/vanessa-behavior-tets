#!/bin/bash
called_path=${0%/*}
stripped=${called_path#[^/]*}
real_path=`pwd`$stripped
echo "real path: $real_path"

connstring="--ibname /F${real_path}/../build/ib"
USERPWD=
#USERPWD=--db-user base --db-pwd 234567890
export RUNNER_ENV=production
mkdir -p $real_path/../build/out/

oscript $real_path/runner.os compileepf $real_path/../ $real_path/../build/out/ $connstring $USERPWD

