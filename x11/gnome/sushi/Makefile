# $OpenBSD: Makefile,v 1.31 2015/07/18 22:29:57 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	quick previewer for Nautilus

GNOME_PROJECT=	sushi
GNOME_VERSION=	3.16.0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm
WANTLIB += atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += clutter-1.0 clutter-gst-3.0 clutter-gtk-1.0 cogl cogl-pango
WANTLIB += cogl-path crypto dbus-1 drm enchant epoxy estdc++ evdocument3
WANTLIB += evview3 expat ffi fontconfig freetype gbm gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 girepository-1.0 gjs glapi glib-2.0
WANTLIB += gmodule-2.0 gmp gnutls gobject-2.0 gpg-error graphite2
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += gtksourceview-3.0 harfbuzz harfbuzz-icu hogweed icudata
WANTLIB += icui18n icuuc javascriptcoregtk-4.0 jpeg json-glib-1.0
WANTLIB += lzma m mozjs-24 musicbrainz5 ncursesw neon nettle notify
WANTLIB += orc-0.4 p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png proxy pthread pthread-stubs readline
WANTLIB += secret-1 soup-2.4 sqlite3 ssl stdc++ tasn1 webkit2gtk-4.0
WANTLIB += webp xcb xcb-dri2 xcb-glx xcb-render xcb-shape xcb-shm
WANTLIB += xcb-xfixes xml2 xslt z

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

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
