# $OpenBSD: Makefile,v 1.22 2020/06/24 16:43:34 ajacoutot Exp $

COMMENT=	small and fast AV1 decoder

VER=		0.7.1
DISTNAME=	dav1d-${VER}
CATEGORIES=	multimedia
MASTER_SITES=	https://downloads.videolan.org/pub/videolan/dav1d/${VER}/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	dav1d	2.0

HOMEPAGE=	https://code.videolan.org/videolan/dav1d/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c pthread

MODULES=	devel/meson

# atomic ops, stdatomic.h
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

.if ${MACHINE_ARCH} == "amd64"
BUILD_DEPENDS+=	devel/nasm
.endif

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+=-Denable_asm=false
.endif

.include <bsd.port.mk>
