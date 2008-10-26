# $OpenBSD: waf.port.mk,v 1.2 2008/10/26 12:21:47 landry Exp $

MODULES +=		lang/python
MODPY_RUNDEP =		no
BUILD_DEPENDS +=	::devel/waf
MODWAF_BIN =		${LOCALBASE}/bin/waf
MAKE_ENV +=		PYTHON=${MODPY_BIN} PYTHON_VERSION=${MODPY_VERSION}
_MODWAF_CMD =		@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODWAF_BIN}
_MODWAF_CONFIGURE_CMD =	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${CONFIGURE_ENV} ${MODWAF_BIN}

do-configure:
	${_MODWAF_CONFIGURE_CMD} configure ${CONFIGURE_ARGS}

.if !target(do-build)
do-build:
	${_MODWAF_CMD} build
.endif

.if !target(do-install)
do-install:
	${_MODWAF_CMD} install --destdir=${WRKINST}
.endif

.if !target(post-install)
post-install:
	@rm -Rf ${WRKSRC}/_build_
.endif
