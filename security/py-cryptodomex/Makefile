COMMENT=	self-contained cryptographic library for Python

MODPY_DISTV=	3.23.0
DISTNAME=	pycryptodomex-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/py//}

CATEGORIES=	security

HOMEPAGE=	https://www.pycryptodome.org

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD + Public Domain
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH} \
		security/py-cryptodome-test-vectors
RUN_DEPENDS=	devel/gmp

.include <bsd.port.arch.mk>
.if ${MACHINE_ARCH:Mamd64} || ${MACHINE_ARCH:Mi386}
PKG_ARGS+= -Daesni=1
.else
PKG_ARGS+= -Daesni=0
.endif

do-test:
	${MODPY_BIN} -m Cryptodome.SelfTest

.include <bsd.port.mk>
