# $OpenBSD: cmake.port.mk,v 1.1.1.1 2006/07/20 09:23:13 espie Exp $

BUILD_DEPENDS+=	::devel/cmake

.if empty(CONFIGURE_STYLE)
CONFIGURE_STYLE=	cmake
.endif
MODCMAKE_configure=	cd ${WRKBUILD} && ${_SYSTRACE_CMD} ${SETENV} \
	CC="${CC}" CFLAGS="${CFLAGS}" \
	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
	${CONFIGURE_ENV} ${LOCALBASE}/bin/cmake ${CONFIGURE_ARGS} ${WRKSRC}

REGRESS_TARGET?=	test
