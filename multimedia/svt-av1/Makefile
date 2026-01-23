# at least in svt_dav1d_blend_v_8bpc_avx2.w4
# sync in dependent ports if changing
USE_NOBTCFI-amd64= Yes

COMMENT=	scalable AV1 encoder

VER=		3.1.2
DISTNAME=	SVT-AV1-v${VER}
PKGNAME=	svt-av1-${VER}
CATEGORIES=	multimedia
SITES=		https://gitlab.com/AOMediaCodec/SVT-AV1/-/archive/v${VER}/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	SvtAv1Enc	5.0

HOMEPAGE=	https://gitlab.com/AOMediaCodec/SVT-AV1

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c m pthread

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c
DEBUG_PACKAGES=	${BUILD_PACKAGES}

MODULES=	devel/cmake

.if ${MACHINE_ARCH} == "amd64"
BUILD_DEPENDS+=	devel/nasm
.endif

# if tests are enabled, it wants to fetch DepLibAom using git during build
# if built, tests can either be run with 'make test', or cd to WRKSRC and
# "LD_LIBRARY_PATH=Bin/Release Bin/Release/SvtAv1UnitTests"
#CONFIGURE_ARGS=	-DBUILD_TESTING=On
NO_TEST=	Yes

.include <bsd.port.mk>
