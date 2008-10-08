# $OpenBSD: Makefile,v 1.7 2008/10/08 11:40:32 ajacoutot Exp $

COMMENT=		Tango icon theme for GNOME and KDE

DISTNAME=		tango-icon-theme-0.8.1
PKGNAME=		${DISTNAME}p2
CATEGORIES=		x11

HOMEPAGE=		http://tango.freedesktop.org/
MASTER_SITES=		${HOMEPAGE}/releases/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=          :icon-naming-utils->=0.8.7:x11/icon-naming-utils \
			:ImageMagick-*:graphics/ImageMagick

CONFIGURE_STYLE= 	gnu
USE_GMAKE=		Yes
PKG_ARCH=		*

.include <bsd.port.mk>
