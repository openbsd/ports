# $OpenBSD: cmake.port.mk,v 1.3 2007/06/09 09:09:44 espie Exp $

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
.else
MODCMAKE_WANTCOLOR ?= Yes
.endif

.if ${MODCMAKE_WANTCOLOR:L} == "yes" && defined(TERM)
MAKE_ENV += TERM=${TERM}
.endif
