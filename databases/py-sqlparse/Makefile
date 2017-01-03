# $OpenBSD: Makefile,v 1.3 2017/01/03 19:17:24 landry Exp $

COMMENT =		non-validating SQL parser

MODPY_EGG_VERSION =	0.2.2
DISTNAME =		sqlparse-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		databases

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest tests/

.include <bsd.port.mk>
