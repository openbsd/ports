# $OpenBSD: Makefile,v 1.6 2017/04/28 15:01:59 benoit Exp $

COMMENT =		non-validating SQL parser

MODPY_EGG_VERSION =	0.2.3
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

post-install:
	mv ${PREFIX}/bin/sqlformat ${PREFIX}/bin/sqlformat${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
