# $OpenBSD: cmake.port.mk,v 1.66 2020/05/25 05:12:00 rsadowski Exp $

BUILD_DEPENDS+=	devel/cmake

.for _n _v in ${SHARED_LIBS}
CONFIGURE_ENV+=LIB${_n}_VERSION=${_v}
MAKE_ENV+=LIB${_n}_VERSION=${_v}
.endfor

USE_NINJA ?= Yes

.if ${USE_NINJA:L} == "yes"
BUILD_DEPENDS += devel/ninja>=1.5.1
NINJA ?= ninja
NINJA_FLAGS ?= -v -j ${MAKE_JOBS}
.elif ${USE_NINJA:L} == "samurai"
BUILD_DEPENDS += devel/samurai
NINJA ?= samu
NINJA_FLAGS ?= -v -j ${MAKE_JOBS}
CONFIGURE_ARGS += -DCMAKE_MAKE_PROGRAM=${NINJA}
.endif

.if ${USE_NINJA:L} == "yes" || ${USE_NINJA:L} == "samurai"
_MODCMAKE_GEN = Ninja
MODCMAKE_BUILD_TARGET = cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
	${NINJA} ${NINJA_FLAGS} ${ALL_TARGET}
MODCMAKE_INSTALL_TARGET = cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
	${FAKE_SETUP} ${NINJA} ${NINJA_FLAGS} ${FAKE_TARGET}
MODCMAKE_TEST_TARGET = cd ${WRKBUILD} && exec ${SETENV} ${ALL_TEST_ENV} \
	${NINJA} ${NINJA_FLAGS} ${TEST_FLAGS} ${TEST_TARGET}

.if !target(do-build)
do-build:
	@${MODCMAKE_BUILD_TARGET}
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
MAKE_ENV +=	JAVA_HOME=${JAVA_HOME}
.endif

# Python
.if ${MODULES:Mlang/python}
# https://cmake.org/cmake/help/latest/module/FindPython3.html#artifacts-specification
CONFIGURE_ARGS +=	-DPYTHON_EXECUTABLE=${MODPY_BIN}
CONFIGURE_ARGS +=	-DPYTHON_LIBRARY_DIRS=${MODPY_LIBDIR}
CONFIGURE_ARGS +=	-DPYTHON_INCLUDE_DIR=${MODPY_INCDIR}
.endif

# Lua
.if ${MODULES:Mlang/lua}
CONFIGURE_ARGS +=	-DLUA_INCLUDE_DIR=${MODLUA_INCL_DIR}
.endif

# Ruby
.if ${MODULES:Mlang/ruby}
# https://cmake.org/cmake/help/latest/module/FindRuby.html
CONFIGURE_ARGS +=	-DRUBY_EXECUTABLE=${RUBY}
.endif

# XXX Remove hackish patches
# Tcl/Tk
CONFIGURE_ENV +=	MODTCL_VERSION=${MODTCL_VERSION} \
			MODTK_VERSION=${MODTK_VERSION} \
			MODTCL_INCDIR=${MODTCL_INCDIR} \
			MODTK_INCDIR=${MODTK_INCDIR} \
			MODTCL_LIBDIR=${MODTCL_LIBDIR} \
			MODTK_LIBDIR=${MODTK_LIBDIR} \
			MODTCL_LIB=${MODTCL_LIB} \
			MODTK_LIB=${MODTK_LIB}

MODCMAKE_DEBUG ?=		No

.if empty(CONFIGURE_STYLE)
CONFIGURE_STYLE=	cmake
.endif
MODCMAKE_configure=	cd ${WRKBUILD} && ${SETENV} \
	CC="${CC}" CFLAGS="${CFLAGS}" \
	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
	${CONFIGURE_ENV} ${LOCALBASE}/bin/cmake \
		-DCMAKE_SKIP_INSTALL_ALL_DEPENDENCY=ON \
		-G ${_MODCMAKE_GEN} ${CONFIGURE_ARGS} ${WRKSRC}

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

TEST_TARGET ?=	test

MODCMAKE_WANTCOLOR ?= No
MODCMAKE_VERBOSE ?= Yes

.if ${MODCMAKE_WANTCOLOR:L} == "yes" && defined(TERM)
MAKE_ENV += TERM=${TERM}
.endif

.if ${MODCMAKE_VERBOSE:L} == "yes"
MAKE_ENV += VERBOSE=1
.endif

