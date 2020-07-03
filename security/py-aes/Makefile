# $OpenBSD: Makefile,v 1.5 2020/07/03 21:13:06 sthen Exp $

COMMENT =		pure-Python implementation of AES block-cipher

MODPY_EGG_VERSION =	1.6.1
DISTNAME =		pyaes-${MODPY_EGG_VERSION}
PKGNAME =		py-aes-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		security

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH}

do-test:
	@cd ${WRKSRC} && \
		${MODPY_BIN} tests/test-blockfeeder.py \
		${MODPY_BIN} tests/test-aes.py

.include <bsd.port.mk>
