COMMENT=	BLAKE3 cryptographic hash function reference in C

GH_ACCOUNT=	BLAKE3-team
GH_PROJECT=	BLAKE3
GH_TAGNAME=	1.8.5
PKGNAME=	${DISTNAME:L}

CATEGORIES=	security

SHARED_LIBS=	blake3	0.0

MAINTAINER=	Mykyta Nazarenko <mykyta@nazarenko.sbs>

# CC0 v1.0 (or alternatively Apache 2.0 with/without LLVM exceptions)
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto

MODULES=	devel/cmake
CONFIGURE_ARGS=	-DBUILD_SHARED_LIBS=ON

WRKSRC=		${WRKDIST}/c

TEST_DEPENDS=	devel/gmake \
		lang/python/3

do-test:
	gmake -C ${WRKSRC} -f Makefile.testing CC="${CC}" \
		CFLAGS="${CFLAGS} -DBLAKE3_TESTING" test

.include <bsd.port.mk>
