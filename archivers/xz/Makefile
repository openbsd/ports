# $OpenBSD: Makefile,v 1.18 2013/04/04 16:03:56 brad Exp $

NOT_FOR_ARCHS=	${GCC2_ARCHS}

COMMENT=	LZMA compression and decompression tools

DISTNAME=	xz-5.0.4
REVISION=	0
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
