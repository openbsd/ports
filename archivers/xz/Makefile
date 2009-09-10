# $OpenBSD: Makefile,v 1.1.1.1 2009/09/10 15:27:26 naddy Exp $

COMMENT=	LZMA compression and decompression tools

DISTNAME=	xz-4.999.9beta
SHARED_LIBS +=  lzma                 0.0      # .0.0
CATEGORIES=	archivers

HOMEPAGE=	http://tukaani.org/xz/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	devel/gettext
WANTLIB=	c

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-dynamic=yes \
		--disable-threads
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
