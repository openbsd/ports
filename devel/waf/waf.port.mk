# $OpenBSD: waf.port.mk,v 1.1.1.1 2008/09/23 19:55:02 landry Exp $

MODULES +=		lang/python
MODPY_RUNDEP =		no
BUILD_DEPENDS +=	::devel/waf
MODWAF_BIN =		${LOCALBASE}/bin/waf
MAKE_ENV +=		PYTHON=${MODPY_BIN} PYTHON_VERSION=${MODPY_VERSION}
_MODWAF_CMD =		@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODWAF_BIN}

do-configure:
	${_MODWAF_CMD} configure

.if !target(do-build)
do-build:
	${_MODWAF_CMD} build
.endif

.if !target(do-install)
do-install:
	${_MODWAF_CMD} install --destdir=${WRKINST}
.endif
