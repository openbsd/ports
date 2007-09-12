# $OpenBSD: Makefile,v 1.15 2007/09/12 15:27:11 naddy Exp $

COMMENT=		BitTorrent library written in C++

DISTNAME=		libtorrent-0.11.7
SHARED_LIBS +=  	torrent              13.0     # .10.6
CATEGORIES=		net devel

HOMEPAGE=		http://libtorrent.rakshasa.no/
MAINTAINER=		Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}downloads/

WANTLIB=		crypto
LIB_DEPENDS=		sigc-2.0:libsigc++-2.*:devel/libsigc++-2

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--with-openssl \
			--with-kqueue \
			--with-statfs \
			--disable-debug
CONFIGURE_ENV=		OPENSSL_CFLAGS=-I/usr/include \
			OPENSSL_LIBS=-lcrypto

.include <bsd.port.mk>
