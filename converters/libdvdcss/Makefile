# $OpenBSD: Makefile,v 1.17 2008/01/23 02:18:10 kurt Exp $

COMMENT=	descramble scrambled DVDs

VER=		1.2.9
DISTNAME=	libdvdcss-${VER}
SHARED_LIBS +=	dvdcss               2.7      # .2.7
CATEGORIES=	converters
MASTER_SITES=	http://www.videolan.org/pub/videolan/libdvdcss/${VER}/ \
		http://www.fr.videolan.org/pub/videolan/vlc/${VER}/

HOMEPAGE=	http://www.videolan.org/libdvdcss/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Free speech issue
PERMIT_PACKAGE_FTP=	Yes

USE_LIBTOOL=Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		ac_cv_path_DOXYGEN=no ac_cv_path_LATEX=no
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autotools

.include <bsd.port.mk>
