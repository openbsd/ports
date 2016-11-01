# $OpenBSD: Makefile,v 1.2 2016/11/01 18:19:17 danj Exp $

COMMENT =		extend nose coverage to add Cobertura-style XML reports

MODPY_EGG_VERSION =	1.0.11
DISTNAME =		nosexcover-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-nose${MODPY_FLAVOR} \
			devel/py-coverage${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS}

do-test:
	cd ${WRKSRC}/nosexcover && nosetests${MODPY_BIN_SUFFIX} -v tests.py

.include <bsd.port.mk>
