# $OpenBSD: Makefile,v 1.2 2012/07/08 09:04:30 ajacoutot Exp $

COMMENT=	quick previewer for Nautilus

GNOME_PROJECT=	sushi
GNOME_VERSION=	0.4.1
REVISION=	0

SHARED_LIBS +=  sushi-1.0                 0.0 # 0.0

HOMEPAGE=	https://live.gnome.org/ThreePointOne/Features/FilePreviewing

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm asn1
WANTLIB += atk-1.0 c cairo cairo-gobject clutter-1.0 clutter-gst-1.0
WANTLIB += clutter-gtk-1.0 cogl cogl-pango crypto dbus-1 dbus-glib-1
WANTLIB += drm enchant evdocument3 evview3 expat ffi fontconfig
WANTLIB += freetype gailutil-3 gdk-3 gdk_pixbuf-2.0 geoclue gio-2.0
WANTLIB += girepository-1.0 gjs gjs-dbus glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gssapi gstapp-0.10 gstaudio-0.10 gstbase-0.10
WANTLIB += gstbasevideo-0.10 gstfft-0.10 gstinterfaces-0.10 gstpbutils-0.10
WANTLIB += gstreamer-0.10 gsttag-0.10 gstvideo-0.10 gthread-2.0
WANTLIB += gtk-3 gtksourceview-3.0 icudata icui18n icuuc javascriptcoregtk-3.0
WANTLIB += jpeg json-glib-1.0 krb5 m mozjs185 musicbrainz3 neon
WANTLIB += nspr4 orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png proxy pthread pthread-stubs
WANTLIB += soup-2.4 sqlite3 ssl stdc++ webkitgtk-3.0 xcb xcb-render
WANTLIB += xcb-shm xml2 xslt z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	audio/libmusicbrainz \
		graphics/clutter/clutter-gst \
		graphics/clutter/clutter-gtk \
		graphics/evince \
		www/webkit,gtk3 \
		x11/gnome/gjs \
		x11/gtksourceview3

.include <bsd.port.mk>
