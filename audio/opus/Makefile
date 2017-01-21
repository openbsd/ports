# $OpenBSD: Makefile,v 1.16 2017/01/21 21:38:11 naddy Exp $

# invalid use of `restrict'
NOT_FOR_ARCHS=	${GCC3_ARCHS}

COMMENT=	IETF audio codec

DISTNAME=	opus-1.1.4
SHARED_LIBS=	opus		1.0	# 5.0
CATEGORIES=	audio

HOMEPAGE=	https://opus-codec.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/opus/ \
		https://ftp.mozilla.org/pub/opus/

WANTLIB=	m

USE_GMAKE=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-maintainer-mode
CONFIGURE_ARGS+=--disable-doc	# requires doxygen

# x86: requires cpuid instruction
.if ${MACHINE_ARCH} == "amd64"
CONFIGURE_ARGS+=--enable-intrinsics
.endif

# fixed-point asm code requires EABI.
#.if ${MACHINE_ARCH} == "arm"
#CONFIGURE_ARGS+=--enable-fixed-point
#CONFIGURE_ARGS+=--enable-intrinsics
#.endif

.include <bsd.port.mk>
