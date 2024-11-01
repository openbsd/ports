ONLY_FOR_ARCHS=	${LP64_ARCHS} i386

COMMENT=	scalable AV1 encoder

VER=		2.3.0
DISTNAME=	SVT-AV1-v${VER}
PKGNAME=	svt-av1-${VER}
CATEGORIES=	multimedia
SITES=		https://gitlab.com/AOMediaCodec/SVT-AV1/-/archive/v${VER}/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	SvtAv1Enc	4.0

HOMEPAGE=	https://gitlab.com/AOMediaCodec/SVT-AV1

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c m pthread

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

.if ${MACHINE_ARCH} == "amd64"
BUILD_DEPENDS+=	devel/nasm
.endif

NO_TEST=	Yes

.include <bsd.port.mk>
