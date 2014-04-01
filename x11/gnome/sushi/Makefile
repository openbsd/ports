# $OpenBSD: Makefile,v 1.21 2014/04/01 13:21:46 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	quick previewer for Nautilus

GNOME_PROJECT=	sushi
GNOME_VERSION=	3.10.0
REVISION=	4

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt asn1 atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject clutter-1.0 clutter-gst-2.0
WANTLIB += clutter-gtk-1.0 cogl cogl-pango com_err crypto dbus-1
WANTLIB += dbus-glib-1 enchant evdocument3 evview3 expat ffi fontconfig
WANTLIB += freetype gailutil-3 gcrypt gdk-3 gdk_pixbuf-2.0 geoclue
WANTLIB += gio-2.0 girepository-1.0 gjs glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error graphite2 gssapi gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 gtksourceview-3.0
WANTLIB += harfbuzz harfbuzz-icu heimbase icudata icui18n icuuc
WANTLIB += javascriptcoregtk-3.0 jpeg json-glib-1.0 krb5 m mozjs-24
WANTLIB += musicbrainz5 ncursesw neon orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png proxy pthread pthread-stubs
WANTLIB += readline roken secret-1 soup-2.4 sqlite3 ssl stdc++
WANTLIB += webkitgtk-3.0 webp wind xcb xcb-render xcb-shm xml2
WANTLIB += xslt z cogl-path

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
