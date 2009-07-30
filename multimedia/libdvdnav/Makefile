# $OpenBSD: Makefile,v 1.9 2009/07/30 19:07:15 jakemsr Exp $

COMMENT=	DVD read/navigation library
DISTNAME=	libdvdnav-4.1.3
PKGNAME=	${DISTNAME}v0
CATEGORIES=	multimedia

SHARED_LIBS=	dvdnav	6.0 \
		dvdnavmini	6.0

MASTER_SITES=	http://www1.mplayerhq.hu/MPlayer/releases/dvdnav/

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

EXTRACT_SUFX=	.tar.bz2

AUTOMAKE_VERSION=1.9
AUTOCONF_VERSION=2.59
USE_LIBTOOL=	Yes

BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} ${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS=	dvdread.>=4.3::devel/libdvdread

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	DVDREAD_CFLAGS="-I${LOCALBASE}/include" \
		DVDREAD_LIBS="-L${LOCALBASE}/lib -ldvdread"

post-patch:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh noconfig

.include <bsd.port.mk>
