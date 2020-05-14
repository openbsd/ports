# $OpenBSD: Makefile,v 1.68 2020/05/14 15:20:04 ajacoutot Exp $

COMMENT=		color profile manager for GNOME

GNOME_PROJECT=		gnome-color-manager
GNOME_VERSION=		3.36.0

CATEGORIES=		graphics

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c cairo colord colordprivate gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-3 intl lcms2 m pango-1.0

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		graphics/colord \
			x11/gtk+3

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache yelp

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
