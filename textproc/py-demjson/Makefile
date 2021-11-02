# $OpenBSD: Makefile,v 1.10 2021/11/02 00:02:37 sthen Exp $

COMMENT =		encoder, decoder, and lint/validator for JSON

DISTNAME =		demjson-${MODPY_EGG_VERSION}
MODPY_EGG_VERSION =	2.2.4
MODPY_PI =		Yes
PKGNAME =		py-${DISTNAME}
REVISION =		6

CATEGORIES =	textproc devel

# LGPLv3
PERMIT_PACKAGE =	Yes

FLAVORS =               python3
FLAVOR =		python3

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS +=		${FULLPKGNAME}:${FULLPKGPATH}

do-test:
	cd ${WRKSRC}/test && 2to3-${MODPY_VERSION} -w test_demjson.py
	cd ${WRKSRC}/test && ${MODPY_BIN} -m unittest test_demjson

.include <bsd.port.mk>
