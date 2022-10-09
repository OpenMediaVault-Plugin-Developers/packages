#!/bin/bash

list="list.json"
tmp="tmp.json"

echo "[" > ${list}
for i in */; do
  echo "{" >> ${list}
  desc="$(cat ${i}/readme)"
  echo "\"name\": \"${i/\//}\"," >> ${list}
  echo "\"description\": \"${desc}\"" >> ${list}
  echo "}," >> ${list}
done
echo "]" >> ${list}

sed -i 'N; $! { P; D; }; s/,//' ${list}
jq . ${list} > ${tmp}
mv ${tmp} ${list}
