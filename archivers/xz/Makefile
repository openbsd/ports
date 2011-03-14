# $OpenBSD: Makefile,v 1.6 2011/03/14 09:17:26 sthen Exp $

COMMENT=	LZMA compression and decompression tools

DISTNAME=	xz-5.0.1
REVISION=	0
SHARED_LIBS=	lzma                 1.0      # .5.0
CATEGORIES=	archivers

HOMEPAGE=	http://tukaani.org/xz/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	devel/gettext gcc3
MODGCC3_ARCHES=	sparc

WANTLIB=	c

USE_LIBTOOL=	Yes
USE_GROFF =	Yes
SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-threads
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
