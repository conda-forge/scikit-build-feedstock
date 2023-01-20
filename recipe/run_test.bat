
:: Update PATH to ensure mingw compiler is not found
pushd %RECIPE_DIR%
call rmpath C:\\Program Files\\Git\\mingw64\\bin
call rmpath C:\\ProgramData\\Chocolatey\\bin
call rmpath C:\\Strawberry\\c\\bin
popd

pytest -m "not isolated and not deprecated and not fortran" --deselect test_isolated_env_trigger_reconfigure --deselect test_generator_cleanup --deselect test_configure_with_cmake_args -v
