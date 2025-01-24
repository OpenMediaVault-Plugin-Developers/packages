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

  if [ -f "${i}readme" ]; then
    # Count lines in readme
    line_count=$(wc -l < "${i}readme")
    if [ "${line_count}" -eq 1 ]; then
      # For single-line, strip newline
      desc=$(cat "${i}readme" | tr -d '\n' | jq -R .)
    else
      # For multi-line, sanitize as is
      desc=$(cat "${i}readme" | jq -Rsa .)
    fi
  else
    desc=""
  fi

  echo "\"name\": \"${name}\"," >> ${list}
  echo "\"description\": ${desc}" >> ${list}
  echo "}," >> ${list}
done
echo "]" >> ${list}

sed -i 'N; $! { P; D; }; s/,//' ${list}
jq . ${list} > ${tmp} && mv ${tmp} ${list}
