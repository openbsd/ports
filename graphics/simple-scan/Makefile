COMMENT=		simple scanning utility

GNOME_PROJECT=		simple-scan
GNOME_VERSION=		44.0
REVISION=		0

CATEGORIES=		graphics

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += c cairo colord gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 gusb handy-1 intl m sane webp webpmux
WANTLIB += z

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS=		devel/libgusb \
			graphics/colord \
			graphics/libwebp \
			graphics/sane-backends \
			x11/libhandy

# xdg-email(1)
RUN_DEPENDS +=		devel/xdg-utils

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache yelp

# patch-src_simple-scan_vala
MODGNOME_TOOLS +=	vala

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
