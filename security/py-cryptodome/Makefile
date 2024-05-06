COMMENT =	self-contained cryptographic library for Python

MODPY_EGG_VERSION =	3.20.0
DISTNAME =	pycryptodome-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/py//}
REVISION =	0

CATEGORIES =	security

HOMEPAGE =	https://www.pycryptodome.org

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD + Public Domain
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
TEST_DEPENDS =		security/py-cryptodome-test-vectors${MODPY_FLAVOR}

RUN_DEPENDS =		devel/gmp

.include <bsd.port.arch.mk>
.if ${MACHINE_ARCH:Mamd64} || ${MACHINE_ARCH:Mi386}
PKG_ARGS+= -Daesni=1
.else
PKG_ARGS+= -Daesni=0
.endif

.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
