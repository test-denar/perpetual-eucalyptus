#!/usr/bin/env bash

set -e
set -o pipefail
set -v

initialGitHash=$(git rev-list --max-parents=0 HEAD)
node ./studio-build.js $initialGitHash &

curl -s -X POST https://stg-api.stackbit.com/project/5de624a5b6920d001397230a/webhook/build/pull > /dev/null
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://stg-api.stackbit.com/pull/5de624a5b6920d001397230a
curl -s -X POST https://stg-api.stackbit.com/project/5de624a5b6920d001397230a/webhook/build/ssgbuild > /dev/null
gatsby build
wait

curl -s -X POST https://stg-api.stackbit.com/project/5de624a5b6920d001397230a/webhook/build/publish > /dev/null
echo "Stackbit-build.sh finished build"
