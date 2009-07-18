# $OpenBSD: Makefile,v 1.1.1.1 2009/07/18 08:53:08 sthen Exp $

COMMENT=	high-speed Dirac codec

DISTNAME=	schroedinger-1.0.7
CATEGORIES=	multimedia
MASTER_SITES=	${HOMEPAGE}download/schroedinger/

SHARED_LIBS=	schroedinger-1.0	0.0

HOMEPAGE=	http://diracvideo.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	m pthread

LIB_DEPENDS=	oil-0.3.>=4.0:liboil->=0.3.16:devel/liboil

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.61
CONFIGURE_ARGS+=	--disable-gstreamer

.include <bsd.port.mk>
