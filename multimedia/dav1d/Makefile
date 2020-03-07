# $OpenBSD: Makefile,v 1.20 2020/03/07 13:31:27 ajacoutot Exp $

COMMENT=	small and fast AV1 decoder

VER=		0.6.0
DISTNAME=	dav1d-${VER}
CATEGORIES=	multimedia
MASTER_SITES=	https://code.videolan.org/videolan/dav1d/-/archive/${VER}/
EXTRACT_SUFX=	.tar.bz2

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
