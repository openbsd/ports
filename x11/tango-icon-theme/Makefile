# $OpenBSD: Makefile,v 1.4 2007/10/22 22:02:12 jasper Exp $

COMMENT=		Tango icon theme for GNOME and KDE

DISTNAME=		tango-icon-theme-0.8.1
CATEGORIES=		x11

HOMEPAGE=		http://www.tango-project.org/
MASTER_SITES=		${HOMEPAGE}/releases/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=          :icon-naming-utils->=0.8.2:x11/icon-naming-utils \
			:ImageMagick-*:graphics/ImageMagick

CONFIGURE_STYLE= 	gnu
USE_GMAKE=		Yes
PKG_ARCH=		*

.include <bsd.port.mk>
