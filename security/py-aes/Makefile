COMMENT =		pure-Python implementation of AES block-cipher

MODPY_DISTV =	1.6.1
DISTNAME =		pyaes-${MODPY_DISTV}
PKGNAME =		py-aes-${MODPY_DISTV}
REVISION =		7

CATEGORIES =		security

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH}

do-test:
	@cd ${WRKSRC} && \
		${MODPY_BIN} tests/test-blockfeeder.py \
		${MODPY_BIN} tests/test-aes.py

.include <bsd.port.mk>
