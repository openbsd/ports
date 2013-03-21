# $OpenBSD: Makefile,v 1.22 2013/03/21 08:45:13 ajacoutot Exp $

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
PERMIT_PACKAGE_CDROM=	Free speech issue
PERMIT_PACKAGE_FTP=	Yes

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.68
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/.auto
CONFIGURE_ENV=	ac_cv_path_DOXYGEN=no \
		ac_cv_path_LATEX=no

.include <bsd.port.mk>
