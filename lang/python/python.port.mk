# $OpenBSD: python.port.mk,v 1.2 2003/07/29 19:35:32 sturm Exp $

MODPY_VERSION?=		2.2

_MODPY_BUILD_DEPENDS=	:python-${MODPY_VERSION}*:lang/python/${MODPY_VERSION}

BUILD_DEPENDS+=		${_MODPY_BUILD_DEPENDS}
RUN_DEPENDS+=		${_MODPY_BUILD_DEPENDS}

MODPY_BIN=		${LOCALBASE}/bin/python${MODPY_VERSION}

# usually setup.py but Setup.py can be found too
MODPY_SETUP?=		setup.py

# build or build_ext are commonly used
MODPY_DISTUTILS_BUILD?=		build --build-base=${WRKSRC}
MODPY_DISTUTILS_INSTALL?=	install --prefix=${PREFIX}

MODPY_CMD=	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
			${MODPY_BIN} ./${MODPY_SETUP}

SUBST_VARS+=	MODPY_VERSION

# dirty way to do it with no modifications in bsd.port.mk
.if !target(do-build)
do-build:
	${MODPY_CMD} ${MODPY_DISTUTILS_BUILD} ${MODPY_DISTUTILS_BUILDARGS}
.endif

# extra documentation or scripts should be installed via post-install
.if !target(do-install)
do-install:
	${MODPY_CMD} ${MODPY_DISTUTILS_INSTALL} ${MODPY_DISTUTILS_INSTALLARGS}
.endif
