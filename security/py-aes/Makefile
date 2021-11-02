# $OpenBSD: Makefile,v 1.7 2021/11/02 00:02:16 sthen Exp $

COMMENT =		pure-Python implementation of AES block-cipher

MODPY_EGG_VERSION =	1.6.1
DISTNAME =		pyaes-${MODPY_EGG_VERSION}
PKGNAME =		py-aes-${MODPY_EGG_VERSION}
REVISION =		3

CATEGORIES =		security

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =		python3

TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH}

do-test:
	@cd ${WRKSRC} && \
		${MODPY_BIN} tests/test-blockfeeder.py \
		${MODPY_BIN} tests/test-aes.py

.include <bsd.port.mk>
