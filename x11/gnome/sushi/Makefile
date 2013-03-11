# $OpenBSD: Makefile,v 1.6 2013/03/11 11:46:12 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	quick previewer for Nautilus

GNOME_PROJECT=	sushi
GNOME_VERSION=	3.6.1

HOMEPAGE=	https://live.gnome.org/ThreePointOne/Features/FilePreviewing

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm asn1
WANTLIB += atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += clutter-1.0 clutter-gst-2.0 clutter-gtk-1.0 cogl cogl-pango
WANTLIB += crypto dbus-1 dbus-glib-1 drm enchant evdocument3 evview3
WANTLIB += expat ffi fontconfig freetype gailutil-3 gdk-3 gdk_pixbuf-2.0
WANTLIB += geoclue gio-2.0 girepository-1.0 gjs gjs-dbus glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gssapi gstapp-0.10 gstaudio-0.10
WANTLIB += gstaudio-1.0 gstbase-0.10 gstbase-1.0 gstfft-0.10 gstinterfaces-0.10
WANTLIB += gstpbutils-0.10 gstpbutils-1.0 gstreamer-0.10 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-0.10 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += gtksourceview-3.0 harfbuzz icudata icui18n icule icuuc
WANTLIB += javascriptcoregtk-3.0 jpeg json-glib-1.0 krb5 m mozjs185
WANTLIB += musicbrainz5 neon nspr4 orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png proxy pthread
WANTLIB += pthread-stubs soup-2.4 sqlite3 ssl stdc++ webkitgtk-3.0
WANTLIB += xcb xcb-render xcb-shm xml2 xslt z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	audio/libmusicbrainz5 \
		graphics/clutter/clutter-gst \
		graphics/clutter/clutter-gtk \
		graphics/evince \
		multimedia/gstreamer1/plugins-base \
		www/webkit,gtk3 \
		x11/gnome/gjs \
		x11/gtksourceview3

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_ARGS=	--disable-static

post-install:
	rm ${PREFIX}/lib/sushi/*.la

.include <bsd.port.mk>
