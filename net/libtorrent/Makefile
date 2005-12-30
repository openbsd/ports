# $OpenBSD: Makefile,v 1.1.1.1 2005/12/30 04:41:30 jolan Exp $

COMMENT=		"BitTorrent Library written in C++"

DISTNAME=		libtorrent-0.7.6
SHARED_LIBS=		torrent	5.0
MODGNU_SHARED_LIBS=	torrent	''
CATEGORIES=		net devel

HOMEPAGE=		http://libtorrent.rakshasa.no/
MAINTAINER=		Henrik Enberg <enberg@printf.se>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		crypto

MASTER_SITES=		${HOMEPAGE}downloads/

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		sigc-2.0.0.0::devel/libsigc++-2

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-openssl=/usr \
			--disable-debug

.include <bsd.port.mk>
