# $OpenBSD: Makefile,v 1.31 2020/03/20 12:19:42 sthen Exp $

COMMENT=	extract digital camera info tags from JPEG images

GH_ACCOUNT=	libexif
GH_PROJECT=	libexif
GH_COMMIT=	54b6f7fb6ae1d08602f9f7c44e0624c8344ee832

DISTNAME=	libexif-0.6.22pre20200229

SHARED_LIBS=	exif	13.1

CATEGORIES=	graphics

HOMEPAGE=	https://libexif.github.io/

# LGPLv2.1
PERMIT_PACKAGE=   Yes

WANTLIB += iconv intl m

LIB_DEPENDS=		devel/gettext,-runtime
SEPARATE_BUILD=		Yes
DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS=		devel/gettext,-tools
CONFIGURE_STYLE=	autoreconf
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

CONFIGURE_ARGS=		--disable-docs
USE_GMAKE=		Yes

.include <bsd.port.mk>
