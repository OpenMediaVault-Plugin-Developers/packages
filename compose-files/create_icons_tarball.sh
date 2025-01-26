#!/bin/bash

find . -type f -exec bash -c 'basename "$(dirname "{}")" | grep -q "^$(basename "{}")$"' \; -print | tar -czf icons.tar.gz -T -
