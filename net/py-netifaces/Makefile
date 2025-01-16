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
MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes

do-test:
	${SETENV} ${ALL_TEST_ENV} ${MODPY_BIN} ${WRKSRC}/test.py

.include <bsd.port.mk>
