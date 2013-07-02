# $OpenBSD: waf.port.mk,v 1.5 2013/07/02 08:36:16 espie Exp $

MODULES +=		lang/python
MODPY_RUNDEP =		no
BUILD_DEPENDS +=	devel/waf
MODWAF_BIN =		${LOCALBASE}/bin/waf
MAKE_ENV +=		PYTHON=${MODPY_BIN} PYTHON_VERSION=${MODPY_VERSION}
_MODWAF_CMD =		cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODWAF_BIN}
_MODWAF_CONFIGURE_CMD =	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${CONFIGURE_ENV} ${MODWAF_BIN}
MODWAF_VERBOSE ?=	Yes

.if ${MODWAF_VERBOSE:L} == "yes"
_MODWAF_VERBOSE_FLAG =	-v
.endif

.if empty(CONFIGURE_STYLE)
CONFIGURE_STYLE = waf
.endif

MODWAF_configure = ${_MODWAF_CONFIGURE_CMD} configure ${_MODWAF_VERBOSE_FLAG} ${CONFIGURE_ARGS}
MODWAF_BUILD_TARGET = ${_MODWAF_CMD} build ${_MODWAF_VERBOSE_FLAG}
MODWAF_INSTALL_TARGET = ${_MODWAF_CMD} install ${_MODWAF_VERBOSE_FLAG} --destdir=${WRKINST}

.if !target(do-build)
do-build:
	@${MODWAF_BUILD_TARGET}
.endif

.if !target(do-install)
do-install:
	@${MODWAF_INSTALL_TARGET}
.endif

MODWAF-post-install = rm -Rf ${WRKSRC}/_build_
