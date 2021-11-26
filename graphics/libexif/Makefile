# $OpenBSD: Makefile,v 1.35 2021/11/26 08:19:54 sthen Exp $

COMMENT=	extract digital camera info tags from JPEG images

V=		0_6_24
GH_ACCOUNT=	libexif
GH_PROJECT=	libexif
GH_TAGNAME=	libexif-$V-release

PKGNAME=	libexif-${V:S/_/./g}

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
