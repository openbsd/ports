# $OpenBSD: Makefile,v 1.20 2013/01/08 23:55:14 brad Exp $

SHARED_ONLY=	Yes

COMMENT=	descramble scrambled DVDs

VER=		1.2.12
DISTNAME=	libdvdcss-${VER}
REVISION=	0
CATEGORIES=	converters
MASTER_SITES=	http://download.videolan.org/pub/libdvdcss/${VER}/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	dvdcss	3.0

HOMEPAGE=	http://www.videolan.org/developers/libdvdcss.html

# GPLv2+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Free speech issue
PERMIT_PACKAGE_FTP=	Yes

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.68
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/.auto
CONFIGURE_ENV=	ac_cv_path_DOXYGEN=no \
		ac_cv_path_LATEX=no

.include <bsd.port.mk>
