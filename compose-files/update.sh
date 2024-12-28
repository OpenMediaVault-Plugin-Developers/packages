#!/bin/bash

list="list.json"
tmp="tmp.json"

echo "[" > ${list}
for i in */; do
  name="${i/\//}"
  if [ ! -f "${i}${name}.yml" ]; then
    echo "No .yml file found for ${name}"
  fi
  if [ ! -f "${i}${name}.env" ]; then
    echo "No .env file found for ${name}"
  fi
  echo "{" >> ${list}
  desc="$(cat ${i}readme)"
  echo "\"name\": \"${name}\"," >> ${list}
  echo "\"description\": \"${desc}\"" >> ${list}
  echo "}," >> ${list}
done
echo "]" >> ${list}

sed -i 'N; $! { P; D; }; s/,//' ${list}
jq . ${list} > ${tmp}
mv ${tmp} ${list}
