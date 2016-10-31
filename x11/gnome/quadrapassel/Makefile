# $OpenBSD: Makefile,v 1.12 2016/10/31 14:31:56 jasper Exp $

COMMENT =		fit falling blocks together

GNOME_PROJECT =		quadrapassel
GNOME_VERSION =		3.22.0

CATEGORIES =		games

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c cairo cairo-gobject canberra canberra-gtk3 clutter-1.0
WANTLIB += clutter-gtk-1.0 cogl cogl-pango cogl-path drm gbm gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gtk-3 json-glib-1.0 m pango-1.0 pangocairo-1.0 pthread
WANTLIB += rsvg-2 intl
WANTLIB += EGL X11 Xcomposite Xdamage Xext Xfixes Xi Xrandr atk-1.0

MODULES =		devel/dconf \
			x11/gnome

MODGNOME_TOOLS =	vala desktop-file-utils gtk-update-icon-cache yelp

LIB_DEPENDS =		audio/libcanberra,-gtk3 \
			graphics/clutter/clutter-gtk

.include <bsd.port.mk>
