# $OpenBSD: cmake.port.mk,v 1.4 2009/06/04 21:07:23 ajacoutot Exp $

BUILD_DEPENDS+=	::devel/cmake

.for _n _v in ${SHARED_LIBS}
CONFIGURE_ENV+=LIB${_n}_VERSION=${_v}
MAKE_ENV+=LIB${_n}_VERSION=${_v}
.endfor

.if empty(CONFIGURE_STYLE)
CONFIGURE_STYLE=	cmake
.endif
MODCMAKE_configure=	cd ${WRKBUILD} && ${_SYSTRACE_CMD} ${SETENV} \
	CC="${CC}" CFLAGS="${CFLAGS}" \
	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
	${CONFIGURE_ENV} ${LOCALBASE}/bin/cmake ${CONFIGURE_ARGS} ${WRKSRC}

REGRESS_TARGET?=	test

.if defined(BATCH)
MODCMAKE_WANTCOLOR ?= No
MODCMAKE_VERBOSE ?= No
.else
MODCMAKE_WANTCOLOR ?= Yes
MODCMAKE_VERBOSE ?= Yes
.endif

.if ${MODCMAKE_WANTCOLOR:L} == "yes" && defined(TERM)
MAKE_ENV += TERM=${TERM}
.endif

.if ${MODCMAKE_VERBOSE:L} == "yes"
MAKE_ENV += VERBOSE=1
.endif
