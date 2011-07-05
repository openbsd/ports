# $OpenBSD: scons.port.mk,v 1.5 2011/07/05 15:17:26 sthen Exp $

BUILD_DEPENDS+=	devel/scons

MODSCONS_BIN=	${LOCALBASE}/bin/scons

MODSCONS_ENV?=	CC="${CC}" \
		CXX="${CXX}" \
		CCFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}" \
		LINKFLAGS="${LDFLAGS}" \
		CPPPATH="${LOCALBASE}/include ${X11BASE}/include" \
		LIBPATH="${LOCALBASE}/lib ${X11BASE}/lib" \
		PREFIX="${PREFIX}" \
		debug=0

MODSCONS_FLAGS?=
ALL_TARGET?=
NO_CCACHE?=Yes

.if !target(do-build)
do-build:
	@${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC} \
		${MODSCONS_ENV} ${MODSCONS_FLAGS} ${ALL_TARGET}
.endif

.if !target(do-install)
do-install:
	@${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC} \
		${MODSCONS_ENV} ${MODSCONS_FLAGS} ${INSTALL_TARGET} \
		DESTDIR=${WRKINST}
.endif
