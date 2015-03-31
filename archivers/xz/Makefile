# $OpenBSD: Makefile,v 1.25 2015/03/31 18:00:23 naddy Exp $

COMMENT=	LZMA compression and decompression tools

DISTNAME=	xz-5.2.1
SHARED_LIBS=	lzma                 2.1      # .7.1
CATEGORIES=	archivers
DPB_PROPERTIES=	parallel

HOMEPAGE=	http://tukaani.org/xz/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB=	c pthread

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-nls
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
