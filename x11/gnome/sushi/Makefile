# $OpenBSD: Makefile,v 1.14 2013/08/10 12:48:33 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	quick previewer for Nautilus

GNOME_PROJECT=	sushi
GNOME_VERSION=	3.8.1
REVISION=	3

HOMEPAGE=	https://live.gnome.org/ThreePointOne/Features/FilePreviewing

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt asn1 atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject clutter-1.0 clutter-gst-2.0
WANTLIB += clutter-gtk-1.0 cogl cogl-pango crypto dbus-1 dbus-glib-1
WANTLIB += enchant evdocument3 evview3 expat ffi fontconfig freetype
WANTLIB += gailutil-3 gcrypt gdk-3 gdk_pixbuf-2.0 geoclue gio-2.0
WANTLIB += girepository-1.0 gjs glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error graphite2 gssapi gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 gtksourceview-3.0
WANTLIB += harfbuzz icui18n javascriptcoregtk-3.0
WANTLIB += jpeg json-glib-1.0 krb5 m mozjs-17.0 musicbrainz5 ncursesw
WANTLIB += neon orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png proxy pthread pthread-stubs
WANTLIB += readline secret-1 soup-2.4 sqlite3 ssl stdc++ webkitgtk-3.0
WANTLIB += webp xcb xcb-render xcb-shm xml2 xslt z
WANTLIB += com_err harfbuzz-icu heimbase icudata
WANTLIB += icuuc roken wind

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	audio/libmusicbrainz5 \
		graphics/clutter/clutter-gst \
		graphics/clutter/clutter-gtk \
		graphics/evince \
		www/webkit,gtk3 \
		x11/gnome/gjs \
		x11/gtksourceview3

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_ARGS=	--disable-static

post-install:
	rm ${PREFIX}/lib/sushi/*.la

.include <bsd.port.mk>
