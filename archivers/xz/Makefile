# $OpenBSD: Makefile,v 1.17 2013/03/21 08:45:11 ajacoutot Exp $

NOT_FOR_ARCHS=	${GCC2_ARCHS}

COMMENT=	LZMA compression and decompression tools

DISTNAME=	xz-5.0.4
SHARED_LIBS=	lzma                 1.0      # .5.4
CATEGORIES=	archivers
DPB_PROPERTIES=	parallel

HOMEPAGE=	http://tukaani.org/xz/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	devel/gettext

WANTLIB=	c

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-threads
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
