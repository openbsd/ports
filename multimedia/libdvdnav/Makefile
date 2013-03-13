# $OpenBSD: Makefile,v 1.21 2013/03/13 00:36:36 brad Exp $

COMMENT=	DVD navigation library

DISTNAME=	libdvdnav-4.2.0
REVISION=	2
EPOCH=		0
CATEGORIES=	multimedia
MASTER_SITES=	${HOMEPAGE}releases/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	dvdnav		6.2 \
		dvdnavmini	6.2

HOMEPAGE=	http://dvdnav.mplayerhq.hu/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	dvdread pthread

AUTOCONF_VERSION= 2.61
AUTOMAKE_VERSION= 1.10

# needs libtoolize
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

LIB_DEPENDS=	devel/libdvdread>=4.2.0

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu

post-patch:
	@cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh noconfig

.include <bsd.port.mk>
