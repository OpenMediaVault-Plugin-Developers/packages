#!/bin/bash
tmp="/tmp/yqtmp"
for i in *; do
  echo "compose :: ${i}"
  file="${i}/${i}.yml"
  if [ -f "${file}" ]; then
    yq . ${file} > ${tmp}
    mv ${tmp} ${file}
    sed -i '/^version:/d' ${file}
  fi
done
