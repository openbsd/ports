# $OpenBSD: Makefile,v 1.2 2016/12/02 21:42:19 danj Exp $

COMMENT =		non-validating SQL parser

MODPY_EGG_VERSION =	0.2.2
DISTNAME =		sqlparse-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

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
