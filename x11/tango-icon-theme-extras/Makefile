# $OpenBSD: Makefile,v 1.7 2010/07/30 06:59:00 ajacoutot Exp $

COMMENT=		Tango icon theme extras for GNOME and KDE

DISTNAME=		tango-icon-theme-extras-0.1.0
REVISION=		3
CATEGORIES=		x11

HOMEPAGE=		http://tango.freedesktop.org/
MASTER_SITES=		${HOMEPAGE}/releases/

# CC Attribution-ShareAlike 2.5
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
