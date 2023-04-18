@echo off
TITLE Releasing the library
echo Installing dependencies...
pip install -r requirements-dev.txt
echo Bumping up library version...
bumpversion --allow-dirty --current-version 1.0.0 minor setup.py telegramdb/constants.py run.bat run.sh
echo Building the package...
python setup.py sdist bdist_wheel
echo Uploading the package...
twine upload dist/*
del /Q dist
echo All Done!