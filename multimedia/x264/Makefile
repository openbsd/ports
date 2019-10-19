# $OpenBSD: Makefile,v 1.53 2019/10/19 16:59:33 visa Exp $

COMMENT=	free H.264/MPEG-4 AVC encoder

V=		20190720
DISTNAME=	x264-snapshot-${V}-2245
PKGNAME=	x264-${V}
REVISION=	0
CATEGORIES=	multimedia
MASTER_SITES=	https://downloads.videolan.org/pub/videolan/x264/snapshots/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	x264	20.0

HOMEPAGE=	https://www.videolan.org/developers/x264.html

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c m pthread

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

.if ${MACHINE_ARCH} == "amd64"
BUILD_DEPENDS+=	devel/nasm
.endif

USE_GMAKE=	Yes
CONFIGURE_STYLE= simple
CONFIGURE_ENV=	API=${LIBx264_VERSION}
CONFIGURE_ARGS+=--prefix=${PREFIX} \
		--enable-pic \
		--enable-shared \
		--enable-static \
		--system-libx264 \
		--disable-ffms \
		--disable-gpac \
		--disable-lavf \
		--disable-swscale

.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "mips64" || \
    ${MACHINE_ARCH} == "mips64el" || ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS+=--disable-asm
.endif

NO_TEST=	Yes

.include <bsd.port.mk>
