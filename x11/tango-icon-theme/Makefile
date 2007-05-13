# $OpenBSD: Makefile,v 1.2 2007/05/13 19:45:10 jasper Exp $

COMMENT=		"Tango icon theme for GNOME and KDE"

DISTNAME=		tango-icon-theme-0.8.0
CATEGORIES=		x11

HOMEPAGE=		http://www.tango-project.org/
MASTER_SITES=		${HOMEPAGE}releases/

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
