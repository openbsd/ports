COMMENT =	portable network interface information

CATEGORIES =	net

MODPY_EGG_VERSION = 0.11.0
DISTNAME =	netifaces-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

do-test:
	 PYTHONPATH=${WRKSRC}/lib.openbsd-${OSREV}-${ARCH}-${MODPY_VERSION} \
	     ${MODPY_BIN} ${WRKSRC}/test.py

.include <bsd.port.mk>
