for i in */; do
  name="$(basename ${i})"
  file="${name}/${name}"
  yml="${file}.yml"
  env="${file}.env"
  readme="${name}/readme"
  if [ ! -f "${file}" ]; then
    echo "${file} icon missing!"
  fi
  if [ ! -f "${yml}" ]; then
    echo "${yml} missing!"
  fi
  if [ ! -f "${env}" ]; then
    echo "${env} missing!"
  fi
  if [ ! -f "${readme}" ]; then
    echo "${readme} missing!"
  fi
done
