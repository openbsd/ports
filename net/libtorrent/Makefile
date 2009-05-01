# $OpenBSD: Makefile,v 1.19 2009/05/01 20:40:26 naddy Exp $

COMMENT=		BitTorrent library written in C++

DISTNAME=		libtorrent-0.12.4
PKGNAME=		${DISTNAME}p0
SHARED_LIBS +=  	torrent              15.0     # .11.4
CATEGORIES=		net devel

HOMEPAGE=		http://libtorrent.rakshasa.no/
MAINTAINER=		Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}downloads/

WANTLIB=		crypto
LIB_DEPENDS=		sigc-2.0:libsigc++->=2,<3:devel/libsigc++-2

USE_LIBTOOL=		Yes

AUTOCONF_VERSION=	2.62
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-static \
			--with-kqueue \
			--disable-debug
CONFIGURE_ENV=		OPENSSL_CFLAGS=-I/usr/include \
			OPENSSL_LIBS=-lcrypto

.include <bsd.port.mk>
