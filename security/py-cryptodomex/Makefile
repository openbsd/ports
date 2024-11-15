COMMENT =	self-contained cryptographic library for Python

MODPY_EGG_VERSION =	3.21.0
REVISION =	0
DISTNAME =	pycryptodomex-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/py//}

CATEGORIES =	security

HOMEPAGE =	https://www.pycryptodome.org

# BSD + Public Domain
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH} \
			security/py-cryptodome-test-vectors${MODPY_FLAVOR}
RUN_DEPENDS =		devel/gmp

.include <bsd.port.arch.mk>
.if ${MACHINE_ARCH:Mamd64} || ${MACHINE_ARCH:Mi386}
PKG_ARGS+= -Daesni=1
.else
PKG_ARGS+= -Daesni=0
.endif

do-test:
	${MODPY_BIN} -m Cryptodome.SelfTest

.include <bsd.port.mk>
