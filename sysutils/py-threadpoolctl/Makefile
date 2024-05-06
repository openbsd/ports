COMMENT =	introspect/set max threads in native libraries like BLAS

MODPY_EGG_VERSION =	3.1.0

DISTNAME =		threadpoolctl-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/joblib/threadpoolctl

# BSD-3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR  =		python3

MODPY_PI =		Yes
MODPY_PYTEST =		Yes

BUILD_DEPENDS += devel/py-flit_core${MODPY_FLAVOR} \
		devel/py-installer${MODPY_FLAVOR}

do-build:
	cd ${WRKSRC} && ${MODPY_BIN} -m flit_core.wheel

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_LIBDIR}
	${MODPY_BIN} -m installer -d ${WRKINST} ${WRKSRC}/dist/*.whl

.include <bsd.port.mk>
