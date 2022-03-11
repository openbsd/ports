COMMENT =		python implementation of mustache templating system

MODPY_EGG_VERSION =	0.5.4
DISTNAME =		pystache-${MODPY_EGG_VERSION}
PKGNAME =		py-stache-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		textproc

# MIT/BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC}/lib; ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX} -v

.include <bsd.port.mk>
