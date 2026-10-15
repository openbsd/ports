COMMENT=	self-contained cryptographic library for Python

MODPY_DISTV=	4.0.0
DISTNAME=	pycryptodome-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/py//}

CATEGORIES=	security

HOMEPAGE=	https://www.pycryptodome.org

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD (Cryptodome-originated code)
# Public Domain (remaining code from PyCrypto)
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

TEST_DEPENDS=	security/py-cryptodome-test-vectors

.include <bsd.port.arch.mk>
.if ${MACHINE_ARCH:Mamd64} || ${MACHINE_ARCH:Mi386}
PKG_ARGS+= -Daesni=1
.else
PKG_ARGS+= -Daesni=0
.endif

.include <bsd.port.mk>
