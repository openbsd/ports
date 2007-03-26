# $OpenBSD: cmake.port.mk,v 1.2 2007/03/26 21:27:44 espie Exp $

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

