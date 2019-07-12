# $OpenBSD: Makefile,v 1.28 2019/07/12 20:51:22 sthen Exp $

COMMENT=		Tango icon theme

DISTNAME=		tango-icon-theme-0.8.90
REVISION=		12
CATEGORIES=		x11

HOMEPAGE=		http://tango.freedesktop.org/
MASTER_SITES=		${HOMEPAGE}/releases/

# Public Domain
PERMIT_PACKAGE=	Yes

MODULES=		textproc/intltool

RUN_DEPENDS=		x11/gtk+3,-guic
BUILD_DEPENDS=          x11/icon-naming-utils \
			graphics/ImageMagick

CONFIGURE_STYLE= 	gnu
USE_GMAKE=		Yes
PKG_ARCH=		*

post-install:
	@ln ${PREFIX}/share/icons/Tango/16x16/apps/preferences-desktop-keyboard{-shortcuts,}.png
	@ln ${PREFIX}/share/icons/Tango/22x22/apps/preferences-desktop-keyboard{-shortcuts,}.png
	@ln ${PREFIX}/share/icons/Tango/32x32/apps/preferences-desktop-keyboard{-shortcuts,}.png
	@ln ${PREFIX}/share/icons/Tango/scalable/apps/preferences-desktop-keyboard{-shortcuts,}.svg

.include <bsd.port.mk>
