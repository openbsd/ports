# $OpenBSD: Makefile,v 1.11 2006/12/21 19:13:07 naddy Exp $

COMMENT=		"BitTorrent library written in C++"

DISTNAME=		libtorrent-0.11.0
SHARED_LIBS +=  	torrent              11.0     # .10.0
CATEGORIES=		net devel

HOMEPAGE=		http://libtorrent.rakshasa.no/
MAINTAINER=		Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}downloads/

LIB_DEPENDS=		sigc-2.0:libsigc++-2.*:devel/libsigc++-2

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--with-openssl=/usr \
			--with-kqueue \
			--disable-debug

.include <bsd.port.mk>
