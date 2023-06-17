COMMENT=	free H.264/MPEG-4 AVC encoder

DISTNAME=	x264-20221028
GH_ACCOUNT=	mirror
GH_PROJECT=	x264
GH_COMMIT=	416e3eb2b52abb0a67e57599aba4f8be3003b36d
REVISION=	1
CATEGORIES=	multimedia

SHARED_LIBS=	x264	24.0

HOMEPAGE=	https://www.videolan.org/developers/x264.html

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c m pthread

# XXX requires __sync builtin
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

.if ${MACHINE_ARCH} == "amd64"
BUILD_DEPENDS+=	devel/nasm
CONFIGURE_ENV+=	AS="nasm ${DEBUG}"
.endif

DEBUG_PACKAGES= ${BUILD_PACKAGES}

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= simple
CONFIGURE_ENV+=	API=${LIBx264_VERSION}
CONFIGURE_ARGS+=--prefix=${PREFIX} \
		--bashcompletionsdir=${LOCALBASE}/share/bash-completion/completions \
		--enable-bashcompletion \
		--enable-shared \
		--enable-static \
		--system-libx264 \
		--disable-ffms \
		--disable-gpac \
		--disable-lavf \
		--disable-swscale

.if ${MACHINE_ARCH} == "arm" || ${MACHINE_ARCH} == "i386" || \
    ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el" || \
    ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS+=--disable-asm
.endif

NO_TEST=	Yes

.include <bsd.port.mk>
