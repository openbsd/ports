# $OpenBSD: Makefile,v 1.22 2014/04/21 14:34:51 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	quick previewer for Nautilus

GNOME_PROJECT=	sushi
GNOME_VERSION=	3.10.0
REVISION=	5

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject clutter-1.0 clutter-gst-2.0
WANTLIB += clutter-gtk-1.0 cogl cogl-pango cogl-path crypto dbus-1
WANTLIB += dbus-glib-1 enchant evdocument3 evview3 expat ffi fontconfig
WANTLIB += freetype gailutil-3 gcrypt gdk-3 gdk_pixbuf-2.0 geoclue
WANTLIB += gio-2.0 girepository-1.0 gjs glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstfft-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 gtksourceview-3.0 harfbuzz
WANTLIB += harfbuzz-icu icudata icui18n icuuc javascriptcoregtk-3.0
WANTLIB += jpeg json-glib-1.0 m mozjs-24 musicbrainz5 ncursesw
WANTLIB += neon orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png proxy pthread pthread-stubs readline
WANTLIB += secret-1 soup-2.4 sqlite3 ssl stdc++ webkitgtk-3.0
WANTLIB += webp xcb xcb-render xcb-shm xml2 xslt z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	audio/libmusicbrainz5 \
		graphics/clutter/clutter-gst \
		graphics/clutter/clutter-gtk \
		graphics/evince \
		www/webkit,gtk3 \
		x11/gnome/gjs \
		x11/gtksourceview3

post-install:
	rm ${PREFIX}/lib/sushi/*.{a,la}

.include <bsd.port.mk>
