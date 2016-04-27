# $OpenBSD: Makefile,v 1.35 2016/04/27 09:47:44 jasper Exp $

COMMENT=	quick previewer for Nautilus

GNOME_PROJECT=	sushi
GNOME_VERSION=	3.18.0
REVISION=	0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm
WANTLIB += atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += clutter-1.0 clutter-gst-3.0 clutter-gtk-1.0 cogl cogl-pango
WANTLIB += cogl-path crypto dbus-1 drm enchant epoxy estdc++ evdocument3
WANTLIB += evview3 expat ffi fontconfig freetype gbm gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 girepository-1.0 gjs glapi glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gpg-error graphite2
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += gtksourceview-3.0 harfbuzz harfbuzz-icu icudata
WANTLIB += icui18n icuuc javascriptcoregtk-4.0 jpeg json-glib-1.0
WANTLIB += lzma m mozjs-24 musicbrainz5 ncursesw neon notify
WANTLIB += orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png proxy pthread pthread-stubs readline
WANTLIB += secret-1 soup-2.4 sqlite3 ssl stdc++ webkit2gtk-4.0
WANTLIB += webp xcb xcb-dri2 xcb-glx xcb-render xcb-shape xcb-shm
WANTLIB += xcb-xfixes xml2 xslt z hyphen iconv intl

MODULES=	x11/gnome

LIB_DEPENDS=	audio/libmusicbrainz5 \
		graphics/clutter/clutter-gst \
		graphics/clutter/clutter-gtk \
		evince-*-!light:graphics/evince \
		www/webkitgtk4 \
		x11/gnome/gjs \
		x11/gtksourceview3

# XXX
pre-configure:
	sed -i 's,clutter-gst-2.0,clutter-gst-3.0,g' ${WRKSRC}/configure

post-install:
	rm ${PREFIX}/lib/sushi/*.{a,la}

.include <bsd.port.mk>
