# $OpenBSD: scons.port.mk,v 1.8 2021/10/31 18:26:38 sthen Exp $

MODSCONS_USE_V2?=	No

.if ${MODSCONS_USE_V2:L} == "yes"
BUILD_DEPENDS+=	devel/scons-py2
MODSCONS_BIN=	${LOCALBASE}/bin/scons-2.5.1
.else
BUILD_DEPENDS+=	devel/scons
MODSCONS_BIN=	${LOCALBASE}/bin/scons
.endif

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

MODSCONS_BUILD_TARGET = \
	${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC} \
		${MODSCONS_ENV} ${MODSCONS_FLAGS} -j ${MAKE_JOBS} \
		${ALL_TARGET}

MODSCONS_INSTALL_TARGET = \
	${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC} \
		${MODSCONS_ENV} ${MODSCONS_FLAGS} ${INSTALL_TARGET} \
		DESTDIR=${WRKINST}

.if !target(do-build)
do-build:
	@${MODSCONS_BUILD_TARGET}
.endif

.if !target(do-install)
do-install:
	@${MODSCONS_INSTALL_TARGET}
.endif
