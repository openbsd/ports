# $OpenBSD: Makefile,v 1.5 2019/07/12 20:50:11 sthen Exp $

COMMENT =		encoder, decoder, and lint/validator for JSON

DISTNAME =		demjson-${MODPY_EGG_VERSION}
MODPY_EGG_VERSION =	2.2.4
MODPY_PI =		Yes
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =	textproc devel

# LGPLv3
PERMIT_PACKAGE =	Yes

FLAVORS =               python3
FLAVOR ?=

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS +=		${FULLPKGNAME}:${FULLPKGPATH}

do-test:
.if ${FLAVOR:Mpython3}
	cd ${WRKSRC}/test && 2to3-${MODPY_VERSION} -w test_demjson.py
.endif
	cd ${WRKSRC}/test && ${MODPY_BIN} -m unittest test_demjson

post-install:
	mv ${PREFIX}/bin/jsonlint ${PREFIX}/bin/jsonlint${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
