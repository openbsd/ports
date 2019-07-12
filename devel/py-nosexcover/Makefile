# $OpenBSD: Makefile,v 1.6 2019/07/12 20:45:51 sthen Exp $

COMMENT =		extend nose coverage to add Cobertura-style XML reports

MODPY_EGG_VERSION =	1.0.11
DISTNAME =		nosexcover-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		1

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-nose${MODPY_FLAVOR} \
			devel/py-coverage${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC}/nosexcover && nosetests${MODPY_BIN_SUFFIX} -v tests.py

.include <bsd.port.mk>
