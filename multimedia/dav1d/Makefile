# $OpenBSD: Makefile,v 1.1.1.1 2019/01/10 20:34:32 sthen Exp $

COMMENT=	small and fast AV1 decoder

VER=		0.1.0
DISTNAME=	dav1d-${VER}
CATEGORIES=	multimedia
MASTER_SITES=	https://download.videolan.org/pub/videolan/dav1d/${VER}/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	dav1d	0.0

HOMEPAGE=	https://code.videolan.org/videolan/dav1d/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c pthread

MODULES=	devel/meson

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

.if ${MACHINE_ARCH} == "amd64"
BUILD_DEPENDS+=	devel/nasm
.endif

CONFIGURE_STYLE=meson

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+=-Dbuild_asm=false
.endif

.include <bsd.port.mk>
