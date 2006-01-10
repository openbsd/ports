# $OpenBSD: Makefile,v 1.13 2006/01/10 11:35:14 espie Exp $

COMMENT=	"descramble scrambled DVDs"

VER=		1.2.8
DISTNAME=	libdvdcss-${VER}
SHARED_LIBS=	dvdcss	2.7
CATEGORIES=	converters
MASTER_SITES=	http://www.videolan.org/pub/videolan/libdvdcss/${VER}/ \
		http://www.fr.videolan.org/pub/videolan/vlc/${VER}/

HOMEPAGE=	http://www.videolan.org/libdvdcss/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	"Free speech issue"
PERMIT_PACKAGE_FTP=	Yes

USE_LIBTOOL=Yes
CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autotools

.include <bsd.port.mk>
