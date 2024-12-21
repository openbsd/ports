COMMENT =	portable network interface information

CATEGORIES =	net

MODPY_DISTV =	0.11.0
DISTNAME =	netifaces-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	3

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

do-test:
	 PYTHONPATH=${WRKSRC}/lib.openbsd-${OSREV}-${ARCH}-${MODPY_VERSION} \
	     ${MODPY_BIN} ${WRKSRC}/test.py

.include <bsd.port.mk>
