# $OpenBSD: Makefile,v 1.9 2014/09/16 19:56:09 miod Exp $

# invalid use of `restrict'
NOT_FOR_ARCHS=	${GCC3_ARCHS}

COMMENT=	IETF audio codec

DISTNAME=	opus-1.1
SHARED_LIBS=	opus		1.0	# 5.0
CATEGORIES=	audio

HOMEPAGE=	http://opus-codec.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/opus/ \
		https://ftp.mozilla.org/pub/mozilla.org/opus/

WANTLIB=	m

USE_GMAKE=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-maintainer-mode
CONFIGURE_ARGS+=--disable-doc	# requires doxygen

.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS+=--enable-fixed-point
.endif

.include <bsd.port.mk>
