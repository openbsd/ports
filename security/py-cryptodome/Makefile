COMMENT =	self-contained cryptographic library for Python

MODPY_DISTV =	3.21.0
DISTNAME =	pycryptodome-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME:S/py//}
REVISION =	0

CATEGORIES =	security

HOMEPAGE =	https://www.pycryptodome.org

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD + Public Domain
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH} \
			security/py-cryptodome-test-vectors
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
