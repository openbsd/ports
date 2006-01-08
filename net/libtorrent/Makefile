# $OpenBSD: Makefile,v 1.3 2006/01/08 10:23:02 steven Exp $

COMMENT=		"BitTorrent Library written in C++"

DISTNAME=		libtorrent-0.7.6
PKGNAME=		${DISTNAME}p0
SHARED_LIBS=		torrent	5.0
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
LIB_DEPENDS=		sigc-2.0.0.0:libsigc++-2.*:devel/libsigc++-2

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-openssl=/usr \
			--disable-debug

.include <bsd.port.mk>
