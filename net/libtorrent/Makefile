# $OpenBSD: Makefile,v 1.26 2011/01/31 14:59:38 naddy Exp $

COMMENT=		BitTorrent library written in C++

DISTNAME=		libtorrent-0.12.6
REVISION=		0
SHARED_LIBS +=  	torrent              17.0     # .11.6
CATEGORIES=		net devel

HOMEPAGE=		http://libtorrent.rakshasa.no/
MAINTAINER=		Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}downloads/

WANTLIB=		crypto sigc-2.0
LIB_DEPENDS=		devel/libsigc++-2

USE_LIBTOOL=		Yes

AUTOCONF_VERSION=	2.64
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-static \
			--with-kqueue \
			--disable-debug
CONFIGURE_ENV=		OPENSSL_CFLAGS=-I/usr/include \
			OPENSSL_LIBS=-lcrypto

.include <bsd.port.mk>
