#!/bin/bash
for i in *.yml; do
  mkdir -p ${i%%.*}
  echo ${i%%.*} > ${i%%.*}/readme
  touch ${i%%.*}/${i%%.*}.env
  sed -i -- '/$---^/,$p' ${i}
  sed -i '/^[[:space:]]*$/d' ${i}
  awk '/---/{i++}i' ${i} > tmp
  mv -v tmp ${i%%.*}/${i}
  rm -fv ${i}
done
