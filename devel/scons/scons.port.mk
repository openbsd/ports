# $OpenBSD: scons.port.mk,v 1.1 2007/12/08 20:11:02 ajacoutot Exp $

BUILD_DEPENDS+=	:scons-*:devel/scons

MODSCONS_BIN=	${LOCALBASE}/bin/scons

MODSCONS_ENV?=	CC="${CC}" \
		CXX="${CXX}" \
		CCFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}" \
		LINKFLAGS="${LDFLAGS}" \
		CPPPATH="${LOCALBASE}/include ${X11BASE}/include" \
		LIBPATH="${LOCALBASE}/lib ${X11BASE}/lib" \
		PREFIX="${PREFIX}"

MODSCONS_FLAGS?=
ALL_TARGET?=

.if !target(do-build)
do-build:
	@${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKBUILD} \
		${MODSCONS_ENV} ${MODSCONS_FLAGS} ${ALL_TARGET}
.endif

.if !target(do-install)
do-install:
	@${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKBUILD} \
		${MODSCONS_ENV} ${MODSCONS_FLAGS} ${INSTALL_TARGET}
.endif
