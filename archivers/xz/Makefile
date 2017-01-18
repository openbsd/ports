# $OpenBSD: Makefile,v 1.33 2017/01/18 21:28:35 naddy Exp $

COMMENT=	LZMA compression and decompression tools

DISTNAME=	xz-5.2.3
SHARED_LIBS=	lzma                 2.1      # 7.3
CATEGORIES=	archivers
DPB_PROPERTIES=	parallel

HOMEPAGE=	http://tukaani.org/xz/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

# uses pledge()
WANTLIB=	c pthread

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-nls \
		--enable-external-sha256
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
