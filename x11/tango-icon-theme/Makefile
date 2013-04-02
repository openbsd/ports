# $OpenBSD: Makefile,v 1.22 2013/04/02 16:16:47 ajacoutot Exp $

COMMENT=		Tango icon theme

DISTNAME=		tango-icon-theme-0.8.90
REVISION=		8
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

CONFIGURE_STYLE= 	gnu
USE_GMAKE=		Yes
PKG_ARCH=		*

post-install:
	@ln ${PREFIX}/share/icons/Tango/16x16/apps/preferences-desktop-keyboard{-shortcuts,}.png
	@ln ${PREFIX}/share/icons/Tango/22x22/apps/preferences-desktop-keyboard{-shortcuts,}.png
	@ln ${PREFIX}/share/icons/Tango/32x32/apps/preferences-desktop-keyboard{-shortcuts,}.png
	@ln ${PREFIX}/share/icons/Tango/scalable/apps/preferences-desktop-keyboard{-shortcuts,}.svg

.include <bsd.port.mk>
