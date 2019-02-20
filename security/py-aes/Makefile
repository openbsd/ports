# $OpenBSD: Makefile,v 1.2 2019/02/20 11:05:31 sthen Exp $

COMMENT =		pure-Python implementation of AES block-cipher

MODPY_EGG_VERSION =	1.6.1
DISTNAME =		pyaes-${MODPY_EGG_VERSION}
PKGNAME =		py-aes-${MODPY_EGG_VERSION}

CATEGORIES =		security

# MIT
PERMIT_PACKAGE_CDROM =	Yes

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
