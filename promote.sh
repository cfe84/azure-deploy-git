#!/bin/sh

FROM=$1
TO=$2

echo "Promoting $FROM to $TO"

./prepare.sh $FROM
./deploy.sh $TO
