"%PYTHON%" setup.py install --single-version-externally-managed --record="%RECIPE_DIR%\record.txt"
if errorlevel 1 exit 1
