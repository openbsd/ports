COMMENT=	small and fast AV1 decoder

#################################################################################
#  /!\ DO NOT UPDATE WITHOUT RUNNING TESTS ON ARM64 (XONLY) and AMD64 (IBT) /!\ #
#################################################################################

VER=		1.2.1
DISTNAME=	dav1d-${VER}
REVISION=	3
CATEGORIES=	multimedia
SITES=		https://downloads.videolan.org/pub/videolan/dav1d/${VER}/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	dav1d	2.3

HOMEPAGE=	https://code.videolan.org/videolan/dav1d/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c m pthread

MODULES=	devel/meson

# atomic ops, stdatomic.h
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/nasm
.endif

CONFIGURE_ARGS+=-Ddefault_library=both \
		-Dxxhash_muxer=disabled

.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS+=-Denable_asm=false
# XXX SIGBUS otherwise
CFLAGS+=	-O1
.endif

.include <bsd.port.mk>
