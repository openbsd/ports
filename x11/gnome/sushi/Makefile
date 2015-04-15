# $OpenBSD: Makefile,v 1.29 2015/04/15 09:40:54 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	quick previewer for Nautilus

GNOME_PROJECT=	sushi
GNOME_VERSION=	3.12.0
REVISION=	5

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject clutter-1.0
WANTLIB += clutter-gst-3.0 clutter-gtk-1.0 cogl cogl-pango cogl-path
WANTLIB += crypto dbus-1 drm enchant epoxy evdocument3 evview3
WANTLIB += expat ffi fontconfig freetype gbm gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 gjs glapi glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error graphite2 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 gtksourceview-3.0
WANTLIB += harfbuzz harfbuzz-icu icudata icui18n icuuc javascriptcoregtk-3.0
WANTLIB += jpeg json-glib-1.0 lzma m mozjs-24 musicbrainz5 ncursesw
WANTLIB += neon orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png proxy pthread pthread-stubs readline
WANTLIB += secret-1 soup-2.4 sqlite3 ssl stdc++ webkitgtk-3.0
WANTLIB += webp xcb xcb-dri2 xcb-render xcb-shape xcb-shm xcb-xfixes
WANTLIB += xml2 xslt z

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

LIB_DEPENDS=	audio/libmusicbrainz5 \
		graphics/clutter/clutter-gst \
		graphics/clutter/clutter-gtk \
		evince-*-!light:graphics/evince \
		www/webkit,gtk3 \
		x11/gnome/gjs \
		x11/gtksourceview3

# XXX
pre-configure:
	perl -pi -e 's,clutter-gst-2.0,clutter-gst-3.0,g' ${WRKSRC}/configure

post-install:
	rm ${PREFIX}/lib/sushi/*.{a,la}

.include <bsd.port.mk>
