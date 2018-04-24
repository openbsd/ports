# $OpenBSD: Makefile,v 1.50 2018/04/24 09:23:58 ajacoutot Exp $

COMMENT=	quick previewer for Nautilus

GNOME_PROJECT=	sushi
GNOME_VERSION=	3.28.3

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL GLESv2 ICE SM X11 X11-xcb
WANTLIB += Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xt Xxf86vm atk-1.0 atk-bridge-2.0 atspi
WANTLIB += brotlicommon brotlidec c cairo cairo-gobject clutter-1.0
WANTLIB += clutter-gst-3.0 clutter-gtk-1.0 cogl cogl-pango cogl-path
WANTLIB += crypto curses dbus-1 drm enchant epoxy evdocument3
WANTLIB += evview3 expat ffi fontconfig freetype fribidi gbm gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0 gjs glapi
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gpg-error graphite2
WANTLIB += gstallocators-1.0 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstfft-1.0 gstgl-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 gtksourceview-3.0 harfbuzz
WANTLIB += harfbuzz-icu hyphen iconv icudata icui18n icuuc intl
WANTLIB += javascriptcoregtk-4.0 jpeg json-glib-1.0 lzma m mozjs-52
WANTLIB += musicbrainz5 neon notify orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png proxy readline secret-1
WANTLIB += soup-2.4 sqlite3 ssl tasn1 webkit2gtk-4.0 webp webpdemux
WANTLIB += woff2common woff2dec xcb xcb-dri2 xcb-glx xcb-render
WANTLIB += xcb-shm xcb-xfixes xml2 xslt z

MODULES=	x11/gnome

# sync with x11/gnome/gjs
COMPILER=	base-clang ports-clang ports-gcc

LIB_DEPENDS=	audio/libmusicbrainz5 \
		graphics/clutter/clutter-gst \
		graphics/clutter/clutter-gtk \
		evince-*-!light:graphics/evince \
		www/webkitgtk4 \
		x11/gnome/gjs \
		x11/gtksourceview3

CONFIGURE_STYLE=gnu

post-install:
	rm ${PREFIX}/lib/sushi/*.{a,la}

.include <bsd.port.mk>
