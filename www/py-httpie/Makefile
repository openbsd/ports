# $OpenBSD: Makefile,v 1.1.1.1 2014/10/14 09:44:02 landry Exp $

COMMENT =	command-line HTTP client

MODPY_EGG_VERSION =	0.8.0
GH_TAGNAME =	${MODPY_EGG_VERSION}
GH_ACCOUNT =	jakubroztocil
GH_PROJECT =	httpie
GH_COMMIT =	43cc3e7ddbf21b4b84bfec06d7d7c1bafb1b7d5e
DISTNAME =	httpie-${MODPY_EGG_VERSION}
PKGNAME =	py-httpie-${MODPY_EGG_VERSION}

CATEGORIES =	www net

HOMEPAGE =	http://httpie.org

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =	www/py-requests \
		textproc/py-pygments
TEST_DEPENDS =	${RUN_DEPENDS}

do-test:
	cd ${WRKBUILD} && ${MODPY_BIN} tests/tests.py

.include <bsd.port.mk>
