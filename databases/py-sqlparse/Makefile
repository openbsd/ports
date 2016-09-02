# $OpenBSD: Makefile,v 1.1.1.1 2016/09/02 08:52:33 landry Exp $

COMMENT =		non-validating SQL parser

MODPY_EGG_VERSION =	0.2.1
DISTNAME =		sqlparse-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		databases

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

TEST_DEPENDS =		devel/py-test

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest tests/

.include <bsd.port.mk>
