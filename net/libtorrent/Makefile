# $OpenBSD: Makefile,v 1.10 2006/12/16 12:22:34 espie Exp $

COMMENT=		"BitTorrent Library written in C++"

DISTNAME=		libtorrent-0.10.4
SHARED_LIBS +=  	torrent              10.0     # .9.0
CATEGORIES=		net devel

HOMEPAGE=		http://libtorrent.rakshasa.no/
MAINTAINER=		Henrik Enberg <enberg@printf.se>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}downloads/

LIB_DEPENDS=		sigc-2.0:libsigc++-2.*:devel/libsigc++-2

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-openssl=/usr \
			--with-kqueue \
			--disable-debug

.include <bsd.port.mk>
