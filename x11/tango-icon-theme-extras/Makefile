# $OpenBSD: Makefile,v 1.1.1.1 2007/05/13 19:47:51 jasper Exp $

COMMENT=		"Tango icon theme extras for GNOME and KDE"

DISTNAME=		tango-icon-theme-extras-0.1.0
CATEGORIES=		x11

HOMEPAGE=		http://www.tango-project.org/
MASTER_SITES=		${HOMEPAGE}releases/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=          :icon-naming-utils-*:x11/icon-naming-utils \
			:ImageMagick-*:graphics/ImageMagick
RUN_DEPENDS=		:tango-icon-theme-*:x11/tango-icon-theme

CONFIGURE_STYLE= 	gnu
USE_GMAKE=		Yes
PKG_ARCH=		*

.include <bsd.port.mk>
