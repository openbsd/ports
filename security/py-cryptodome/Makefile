COMMENT=	self-contained cryptographic library for Python

# check packaging on at least these arch for cpu-specific builds:
# amd64 (builds aesni/shani, avx2/bmi files)
# i386 (no avx2/bmi)
# aarch64 (none)
MODPY_DISTV=	4.2.0
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

TEST_DEPENDS=	security/py-cryptodome-test-vectors>=1.0.26

.if ${MACHINE_ARCH:Mamd64}
AESNI=
AVX2=
.elif ${MACHINE_ARCH:Mi386}
AESNI=
.endif

# disable aesni/shani .so files
AESNI?=		"@comment "

# disable avx2/bmi .so files
AVX2?=		"@comment "

SUBST_VARS=	AESNI AVX2

fix-plist:
	@cp pkg/PLIST pkg/PLIST.old
.for sfx pfx in \
	avx2 AVX2 \
	bmi2 AVX2 \
	aesni AESNI \
	shani AESNI \
	clmul AESNI
	sed -i 's,^\(@so .*_${sfx}.*\),$${${pfx}}\1,' pkg/PLIST
.endfor
	@diff -u0 pkg/PLIST.old pkg/PLIST || true

.include <bsd.port.mk>
