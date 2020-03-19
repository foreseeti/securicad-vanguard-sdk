#!/bin/bash

set -e

cd "$(dirname "$0")"

rm -rf tmp-venv
python3.7 -m venv tmp-venv
. tmp-venv/bin/activate
pip install --upgrade pip
pip install -r dependencies.txt
pip freeze > requirements.txt
deactivate
rm -rf tmp-venv
