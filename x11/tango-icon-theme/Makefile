# $OpenBSD: Makefile,v 1.21 2013/03/11 11:46:16 espie Exp $

COMMENT=		Tango icon theme

DISTNAME=		tango-icon-theme-0.8.90
REVISION=		7
CATEGORIES=		x11

HOMEPAGE=		http://tango.freedesktop.org/
MASTER_SITES=		${HOMEPAGE}/releases/

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		textproc/intltool

RUN_DEPENDS=		x11/gtk+2,-guic
BUILD_DEPENDS=          x11/icon-naming-utils>=0.8.7 \
			graphics/ImageMagick \
			x11/gtk+2,-guic

# Add the corresponding "Inherits" theme.
RUN_DEPENDS +=		x11/gnome/icon-theme

CONFIGURE_STYLE= 	gnu
USE_GMAKE=		Yes
PKG_ARCH=		*

post-install:
	@ln ${PREFIX}/share/icons/Tango/16x16/apps/preferences-desktop-keyboard{-shortcuts,}.png
	@ln ${PREFIX}/share/icons/Tango/22x22/apps/preferences-desktop-keyboard{-shortcuts,}.png
	@ln ${PREFIX}/share/icons/Tango/32x32/apps/preferences-desktop-keyboard{-shortcuts,}.png
	@ln ${PREFIX}/share/icons/Tango/scalable/apps/preferences-desktop-keyboard{-shortcuts,}.svg

.include <bsd.port.mk>
