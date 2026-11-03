COMMENT=	self-contained cryptographic library for Python

# check packaging on at least these arch for cpu-specific builds
# and update commented-out files as necessary, i.e. updating this
# port requires generating PLIST on multiple archs and adding
# markers via "make fix-plist":
#
# amd64 (AES-NI, SHA-NI, AVX2/BMI)
# i386 (no cpu-specific code)
# aarch64 (ARMv8 Cryptography Extensions)
MODPY_DISTV=	4.3.0
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

TEST_DEPENDS=	security/py-cryptodome-test-vectors>=1.0.28

.if ${MACHINE_ARCH:Mamd64}
AESNI=
AVX2=
.elif ${MACHINE_ARCH:Mi386}
AESNI=
.elif ${MACHINE_ARCH:Maarch64}
ARMv8=
.endif

AESNI?=		"@comment "
AVX2?=		"@comment "
ARMv8?=		"@comment "

SUBST_VARS=	AESNI AVX2 ARMv8

fix-plist:
	@cp pkg/PLIST pkg/PLIST.old
.for sfx pfx in \
	avx2 AVX2 \
	bmi2 AVX2 \
	aesni AESNI \
	shani AESNI \
	clmul AESNI \
	armv8 ARMv8 \
	pmull ARMv8
	sed -i 's,^\(@so .*_${sfx}.*\),$${${pfx}}\1,' pkg/PLIST
.endfor
	@diff -u0 pkg/PLIST.old pkg/PLIST || true

.include <bsd.port.mk>
