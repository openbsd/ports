# $OpenBSD: waf.port.mk,v 1.4 2011/09/22 13:05:57 landry Exp $

MODULES +=		lang/python
MODPY_RUNDEP =		no
BUILD_DEPENDS +=	devel/waf
MODWAF_BIN =		${LOCALBASE}/bin/waf
MAKE_ENV +=		PYTHON=${MODPY_BIN} PYTHON_VERSION=${MODPY_VERSION}
_MODWAF_CMD =		@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODWAF_BIN}
_MODWAF_CONFIGURE_CMD =	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${CONFIGURE_ENV} ${MODWAF_BIN}
MODWAF_VERBOSE ?=	Yes

.if ${MODWAF_VERBOSE:L} == "yes"
_MODWAF_VERBOSE_FLAG =	-v
.endif

do-configure:
	${_MODWAF_CONFIGURE_CMD} configure ${_MODWAF_VERBOSE_FLAG} ${CONFIGURE_ARGS}

.if !target(do-build)
do-build:
	${_MODWAF_CMD} build ${_MODWAF_VERBOSE_FLAG}
.endif

.if !target(do-install)
do-install:
	${_MODWAF_CMD} install ${_MODWAF_VERBOSE_FLAG} --destdir=${WRKINST}
.endif

.if !target(post-install)
post-install:
	@rm -Rf ${WRKSRC}/_build_
.endif
