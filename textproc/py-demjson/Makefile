COMMENT =		encoder, decoder, and lint/validator for JSON

DISTNAME =		demjson-${MODPY_EGG_VERSION}
MODPY_EGG_VERSION =	2.2.4
MODPY_PI =		Yes
PKGNAME =		py-${DISTNAME}
REVISION =		8

CATEGORIES =	textproc devel

# LGPLv3
PERMIT_PACKAGE =	Yes

FLAVORS =               python3
FLAVOR =		python3

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS +=		${FULLPKGNAME}:${FULLPKGPATH}

post-patch:
	cd ${WRKSRC} && 2to3 -w test/test_demjson.py jsonlint demjson.py

do-test:
	cd ${WRKSRC}/test && ${MODPY_BIN} -m unittest test_demjson

.include <bsd.port.mk>
