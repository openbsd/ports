# $OpenBSD: Makefile,v 1.60 2021/04/28 04:03:24 rsadowski Exp $

COMMENT=	free H.264/MPEG-4 AVC encoder

DISTNAME=	x264-20210415
GH_ACCOUNT=	mirror
GH_PROJECT=	x264
GH_COMMIT=	c347e7a0b476d77674e2c9a6f137f57da026e8fc
CATEGORIES=	multimedia

SHARED_LIBS=	x264	23.0

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
.endif

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= simple
CONFIGURE_ENV=	API=${LIBx264_VERSION}
CONFIGURE_ARGS+=--prefix=${PREFIX} \
		--bashcompletionsdir=${LOCALBASE}/share/bash-completion/completions \
		--enable-bashcompletion \
		--enable-pic \
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
