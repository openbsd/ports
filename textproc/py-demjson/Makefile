# $OpenBSD: Makefile,v 1.1.1.1 2016/09/02 14:12:20 edd Exp $

COMMENT =		encoder, decoder, and lint/validator for JSON

DISTNAME =		demjson-${MODPY_EGG_VERSION}
MODPY_EGG_VERSION =	2.2.4
MODPY_PI =		Yes
PKGNAME =		py-${DISTNAME}

CATEGORIES =	textproc devel

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

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

.if ${FLAVOR:Mpython3}
post-install:
	mv ${PREFIX}/bin/jsonlint ${PREFIX}/bin/jsonlint${MODPY_BIN_SUFFIX}
.endif

.include <bsd.port.mk>
