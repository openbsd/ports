# $OpenBSD: Makefile,v 1.14 2019/07/12 20:51:22 sthen Exp $

COMMENT=		Tango icon theme extras for GNOME and KDE

DISTNAME=		tango-icon-theme-extras-0.1.0
REVISION=		7
CATEGORIES=		x11

HOMEPAGE=		http://tango.freedesktop.org/
MASTER_SITES=		${HOMEPAGE}/releases/

# CC Attribution-ShareAlike 2.5
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=          x11/icon-naming-utils \
			graphics/ImageMagick
RUN_DEPENDS=		x11/tango-icon-theme \
			x11/gtk+3,-guic

CONFIGURE_STYLE= 	gnu
USE_GMAKE=		Yes
PKG_ARCH=		*

.include <bsd.port.mk>
