pytest -m "not isolated and not deprecated and not fortran" --deselect test_isolated_env_trigger_reconfigure --deselect test_generator_cleanup --deselect test_configure_with_cmake_args -v
