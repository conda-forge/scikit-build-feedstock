
:: Update PATH to ensure mingw compiler is not found
pushd %RECIPE_DIR%
call rmpath C:\\Program Files\\Git\\mingw64\\bin
call rmpath C:\\ProgramData\\Chocolatey\\bin
call rmpath C:\\Strawberry\\c\\bin
popd

pytest -m "not isolated and not deprecated" -v