# $OpenBSD: Makefile,v 1.7 2013/03/28 19:33:46 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	quick previewer for Nautilus

GNOME_PROJECT=	sushi
GNOME_VERSION=	3.8.0

HOMEPAGE=	https://live.gnome.org/ThreePointOne/Features/FilePreviewing

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt asn1 atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject clutter-1.0 clutter-gst-2.0
WANTLIB += clutter-gtk-1.0 cogl cogl-pango crypto dbus-1 dbus-glib-1
WANTLIB += enchant evdocument3 evview3 expat ffi fontconfig freetype
WANTLIB += gailutil-3 gdk-3 gdk_pixbuf-2.0 geoclue gio-2.0 girepository-1.0
WANTLIB += gjs glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gssapi
WANTLIB += gstapp-0.10 gstaudio-0.10 gstaudio-1.0 gstbase-0.10
WANTLIB += gstbase-1.0 gstfft-0.10 gstinterfaces-0.10 gstpbutils-0.10
WANTLIB += gstpbutils-1.0 gstreamer-0.10 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-0.10 gstvideo-1.0 gthread-2.0 gtk-3 gtksourceview-3.0
WANTLIB += harfbuzz icudata icui18n icule icuuc javascriptcoregtk-3.0
WANTLIB += jpeg json-glib-1.0 krb5 m mozjs185 musicbrainz5 ncursesw
WANTLIB += neon nspr4 orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png proxy pthread pthread-stubs
WANTLIB += readline soup-2.4 sqlite3 ssl stdc++ webkitgtk-3.0
WANTLIB += xcb xcb-render xcb-shm xml2 xslt z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	audio/libmusicbrainz5 \
		graphics/clutter/clutter-gst \
		graphics/clutter/clutter-gtk \
		graphics/evince \
		multimedia/gstreamer1/plugins-base \
		www/webkit,gtk3 \
		x11/gnome/gjs>=1.36.0 \
		x11/gtksourceview3

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_ARGS=	--disable-static

post-install:
	rm ${PREFIX}/lib/sushi/*.la

.include <bsd.port.mk>
