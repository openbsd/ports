# $OpenBSD: Makefile,v 1.21 2013/08/07 15:37:07 naddy Exp $

COMMENT=	LZMA compression and decompression tools

DISTNAME=	xz-5.0.5
SHARED_LIBS=	lzma                 1.0      # .5.5
CATEGORIES=	archivers
REVISION =	0
DPB_PROPERTIES=	parallel

HOMEPAGE=	http://tukaani.org/xz/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB=	c

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-threads \
		--disable-nls
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
