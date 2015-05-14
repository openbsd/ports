# $OpenBSD: Makefile,v 1.8 2015/05/14 07:22:52 jasper Exp $

COMMENT =		fit falling blocks together

GNOME_PROJECT =		quadrapassel
GNOME_VERSION =		3.16.1

CATEGORIES =		games

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xdamage Xext Xfixes Xi Xrandr atk-1.0
WANTLIB += c cairo cairo-gobject canberra canberra-gtk3 clutter-1.0
WANTLIB += clutter-gtk-1.0 cogl cogl-pango cogl-path fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gtk-3 json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread rsvg-2 z EGL drm gbm

MODULES =		devel/dconf \
			devel/gettext \
			x11/gnome

MODGNOME_TOOLS =	vala desktop-file-utils gtk-update-icon-cache yelp

LIB_DEPENDS =		audio/libcanberra,-gtk3 \
			graphics/clutter/clutter-gtk

.include <bsd.port.mk>
