COMMENT=		simple scanning utility

DIST_TUPLE=		gnome GNOME simple-scan 48.1 .

CATEGORIES=		graphics

HOMEPAGE=		https://apps.gnome.org/SimpleScan/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += adwaita-1 c cairo colord gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-4 gusb intl m sane webp webpmux z

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS=		devel/libgusb \
			graphics/colord \
			graphics/libwebp \
			graphics/sane-backends \
			x11/gnome/libadwaita

# xdg-email(1)
RUN_DEPENDS +=		devel/xdg-utils

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache vala yelp

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
