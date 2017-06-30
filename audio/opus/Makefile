# $OpenBSD: Makefile,v 1.17 2017/06/30 19:32:16 naddy Exp $

# invalid use of `restrict'
NOT_FOR_ARCHS=	${GCC3_ARCHS}

COMMENT=	IETF audio codec

DISTNAME=	opus-1.2.1
SHARED_LIBS=	opus		1.1	# 6.1
CATEGORIES=	audio

HOMEPAGE=	https://opus-codec.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://archive.mozilla.org/pub/opus/

WANTLIB=	m

USE_GMAKE=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-doc	# requires doxygen

# fixed-point asm code requires EABI.
#.if ${MACHINE_ARCH} == "arm"
#CONFIGURE_ARGS+=--enable-fixed-point
#.endif

.include <bsd.port.mk>
