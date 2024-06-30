cmake ^
    -G "NMake Makefiles JOM" ^
    -D Boost_NO_SYSTEM_PATHS=ON ^
    -D Boost_NO_BOOST_CMAKE=ON ^
    -D BOOST_ROOT="%LIBRARY_PREFIX%" ^
    -D CMAKE_BUILD_TYPE=Release ^
    -D CMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
    -D PYTHON_EXECUTABLE="%PYTHON%" ^
    -D PYTHON_INSTDIR="%SP_DIR%" ^
    -D RDK_BUILD_AVALON_SUPPORT=ON ^
    -D RDK_BUILD_CAIRO_SUPPORT=ON ^
    -D RDK_BUILD_CPP_TESTS=OFF ^
    -D RDK_BUILD_FREESASA_SUPPORT=ON ^
    -D RDK_BUILD_INCHI_SUPPORT=ON ^
    -D RDK_BUILD_PGSQL=ON ^
    -D RDK_BUILD_XYZ2MOL_SUPPORT=ON ^
    -D RDK_BUILD_YAEHMOP_SUPPORT=ON ^
    -D RDK_INSTALL_DLLS_MSVC=ON ^
    -D RDK_INSTALL_DEV_COMPONENT=OFF ^
    -D RDK_INSTALL_INTREE=OFF ^
    -D RDK_INSTALL_STATIC_LIBS=OFF ^
    -D RDK_PGSQL_STATIC=OFF ^
    .
if errorlevel 1 exit 1

cmake --build . --config Release
if errorlevel 1 exit 1
