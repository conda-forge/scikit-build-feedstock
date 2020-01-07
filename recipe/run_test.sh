if [ "$(uname)" == Darwin ] ; then
    export _PYTHON_HOST_PLATFORM=macosx-${MACOSX_DEPLOYMENT_TARGET}-x86_64
fi
py.test -k "not test_fortran_compiler and not test_issue352_isolated_environment_support and not test_cmake_args_keyword_osx_default" -v
