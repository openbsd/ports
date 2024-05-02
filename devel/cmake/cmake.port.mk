BUILD_DEPENDS+=	devel/cmake

.for _n _v in ${SHARED_LIBS}
CONFIGURE_ENV +=LIB${_n}_VERSION=${_v}
MAKE_ENV +=LIB${_n}_VERSION=${_v}
.endfor

# Enable the override of shared library version using LIBxxx_VERSION, putting
# them under ports control. See cmGeneratorTarget.cxx
MODCMAKE_USE_SHARED_LIBS ?= Yes
.if ${MODCMAKE_USE_SHARED_LIBS:L} == "yes"
CONFIGURE_ENV += MODCMAKE_USE_SHARED_LIBS=yes
MAKE_ENV += MODCMAKE_USE_SHARED_LIBS=yes
.endif

# Limit the number of moc/uic processes started by cmake_autogen
# (default: number of CPUs on the system)
CONFIGURE_ARGS += -DCMAKE_AUTOGEN_PARALLEL=${MAKE_JOBS}

USE_NINJA ?= Yes

.if ${USE_NINJA:L} == "yes"
BUILD_DEPENDS += devel/ninja
.elif ${USE_NINJA:L} == "samurai"
BUILD_DEPENDS += devel/samurai
CONFIGURE_ARGS += -DCMAKE_MAKE_PROGRAM=samu
.endif

.if ${USE_NINJA:L} == "yes" || ${USE_NINJA:L} == "samurai"
_MODCMAKE_GEN = Ninja
MODCMAKE_BUILD_TARGET = cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
	cmake --build ${WRKBUILD} ${_MAKE_VERBOSE} -j ${MAKE_JOBS}

MODCMAKE_INSTALL_TARGET = cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
	${FAKE_SETUP} cmake --install ${WRKBUILD}

MODCMAKE_TEST_TARGET = cd ${WRKBUILD} && exec ${SETENV} ${ALL_TEST_ENV} \
	ctest ${_MAKE_VERBOSE} -j ${MAKE_JOBS}

# Default targets are only known after configure, see cmake-buildsystem(7) and
# cmake-properties(7) BUILDSYSTEM_TARGETS.
# Overrule bsd.port.mk defaults.
ALL_TARGET ?= # empty

# Only pass explicitly set targets.
# Do not quote, cmake(1) -t takes multiple target arguments.
.if !target(do-build)
do-build:
.  if empty(ALL_TARGET)
	@${MODCMAKE_BUILD_TARGET}
.  else
	@${MODCMAKE_BUILD_TARGET} -t ${ALL_TARGET}
.  endif
.endif

.if !target(do-install)
do-install:
	@${MODCMAKE_INSTALL_TARGET}
.endif

.if !target(do-test)
do-test:
	@${MODCMAKE_TEST_TARGET}
.endif

.else
_MODCMAKE_GEN = "Unix Makefiles"
# XXX cmake include parser is bogus
DPB_PROPERTIES += nojunk
.endif

# JAVA
.if ${MODULES:Mjava}
CONFIGURE_ENV +=	JAVA_HOME=${JAVA_HOME}
MAKE_ENV +=		JAVA_HOME=${JAVA_HOME}
.endif

# Python
.if ${MODULES:Mlang/python}
# https://cmake.org/cmake/help/latest/module/FindPython3.html#artifacts-specification
CONFIGURE_ARGS +=	-DPYTHON_EXECUTABLE=${MODPY_BIN}
CONFIGURE_ARGS +=	-DPYTHON_LIBRARY_DIRS=${MODPY_LIBDIR}
CONFIGURE_ARGS +=	-DPYTHON_INCLUDE_DIR=${MODPY_INCDIR}
CONFIGURE_ARGS +=	-DPython_EXECUTABLE=${MODPY_BIN}
CONFIGURE_ARGS +=	-DPython_LIBRARY_DIRS=${MODPY_LIBDIR}
CONFIGURE_ARGS +=	-DPython_INCLUDE_DIR=${MODPY_INCDIR}
CONFIGURE_ARGS +=	-DPython${MODPY_MAJOR_VERSION}_EXECUTABLE=${MODPY_BIN}
CONFIGURE_ARGS +=	-DPython${MODPY_MAJOR_VERSION}_LIBRARY_DIRS=${MODPY_LIBDIR}
CONFIGURE_ARGS +=	-DPython${MODPY_MAJOR_VERSION}_INCLUDE_DIR=${MODPY_INCDIR}
.endif

# Lua
.if ${MODULES:Mlang/lua}
CONFIGURE_ARGS +=	-DLUA_INCLUDE_DIR=${MODLUA_INCL_DIR}
CONFIGURE_ARGS +=	-DLUA_LIBRARY=${LOCALBASE}/lib/liblua${MODLUA_VERSION}.so.${MODLUA_VERSION}
.endif

# Ruby
.if ${MODULES:Mlang/ruby}
# https://cmake.org/cmake/help/latest/module/FindRuby.html
CONFIGURE_ARGS +=	-DRUBY_EXECUTABLE=${RUBY}
.endif

# TCL
.if ${MODULES:Mlang/tcl}
CONFIGURE_ENV +=	MODTCL_VERSION=${MODTCL_VERSION} \
			MODTCL_INCDIR=${MODTCL_INCDIR} \
			MODTCL_LIBDIR=${MODTCL_LIBDIR} \
			MODTCL_LIB=${MODTCL_LIB}
.endif

# TK
.if ${MODULES:Mx11/tk}
CONFIGURE_ENV +=	MODTK_VERSION=${MODTK_VERSION} \
			MODTK_INCDIR=${MODTK_INCDIR} \
			MODTK_LIBDIR=${MODTK_LIBDIR} \
			MODTK_LIB=${MODTK_LIB}
.endif

.if ! empty(MODCMAKE_LDFLAGS)
# https://cmake.org/cmake/help/latest/envvar/LDFLAGS.html
# Will only be used by CMake on the first configuration to determine the
# default linker flags, after which the value for LDFLAGS is stored in the
# cache as CMAKE_EXE_LINKER_FLAGS_INIT, CMAKE_SHARED_LINKER_FLAGS_INIT, and
# CMAKE_MODULE_LINKER_FLAGS_INIT. For any configuration run (including the
# first), the environment variable will be ignored if the equivalent
# CMAKE_<TYPE>_LINKER_FLAGS_INIT variable is defined.
CONFIGURE_ENV +=	LDFLAGS="${MODCMAKE_LDFLAGS}"
.endif

MODCMAKE_DEBUG ?=		No

.if empty(CONFIGURE_STYLE)
CONFIGURE_STYLE =	cmake
.endif
MODCMAKE_configure =	cd ${WRKBUILD} && ${SETENV} \
	CC="${CC}" CFLAGS="${CFLAGS}" \
	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
	${CONFIGURE_ENV} ${LOCALBASE}/bin/cmake \
		-B ${WRKBUILD} \
		-S ${WRKSRC} \
		-G ${_MODCMAKE_GEN} \
		-DCMAKE_SKIP_INSTALL_ALL_DEPENDENCY=ON \
		-DCMAKE_SUPPRESS_REGENERATION=ON \
		${CONFIGURE_ARGS}

.if !defined(CONFIGURE_ARGS) || ! ${CONFIGURE_ARGS:M*CMAKE_BUILD_TYPE*}
.  if ${MODCMAKE_DEBUG:L} == "yes"
CONFIGURE_ARGS += -DCMAKE_BUILD_TYPE=Debug
MODCMAKE_BUILD_SUFFIX =	-debug.cmake
.  else
CONFIGURE_ARGS += -DCMAKE_BUILD_TYPE=Release
MODCMAKE_BUILD_SUFFIX =	-release.cmake
.  endif
.endif
SUBST_VARS +=	MODCMAKE_BUILD_SUFFIX

SEPARATE_BUILD ?=	Yes

# https://cmake.org/cmake/help/latest/command/enable_language.html
# 3.23: Swift OBJCXX OBJC ISPC HIP Fortran CXX CUDA C
_CMAKE_PROCESSING_LANGUAGE = ASM OBJCXX OBJC Fortran CXX C
.for LANG in ${_CMAKE_PROCESSING_LANGUAGE}
CONFIGURE_ARGS :=	-DCMAKE_${LANG}_COMPILER_AR:FILEPATH=/usr/bin/ar \
			-DCMAKE_${LANG}_COMPILER_RANLIB:FILEPATH=/usr/bin/ranlib \
			${CONFIGURE_ARGS}
.endfor

CONFIGURE_ARGS :=	-DCMAKE_ADDR2LINE:FILEPATH=/usr/bin/addr2line \
			-DCMAKE_AR:FILEPATH=/usr/bin/ar \
			-DCMAKE_NM:FILEPATH=/usr/bin/nm \
			-DCMAKE_RANLIB:FILEPATH=/usr/bin/ranlib \
			-DCMAKE_READELF:FILEPATH=/usr/bin/readelf \
			-DCMAKE_STRIP:FILEPATH=/usr/bin/strip \
			${CONFIGURE_ARGS}

# Disable cmake's default optimization flags, putting them under ports control
CONFIGURE_ENV += MODCMAKE_PORT_BUILD=yes
MAKE_ENV += MODCMAKE_PORT_BUILD=yes

MODCMAKE_WANTCOLOR ?= No

.if ${MODCMAKE_WANTCOLOR:L} == "yes" && defined(TERM)
MAKE_ENV += TERM=${TERM}
.endif

MODCMAKE_VERBOSE ?= Yes

.if ${MODCMAKE_VERBOSE:L} == "yes"
_MAKE_VERBOSE = --verbose
.endif
