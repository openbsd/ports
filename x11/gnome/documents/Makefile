# $OpenBSD: Makefile,v 1.42 2014/04/02 14:34:47 ajacoutot Exp $

TRACKER_VERSION=1.0

SHARED_ONLY=	Yes

COMMENT=	document manager for GNOME

GNOME_PROJECT=	gnome-documents
GNOME_VERSION=	3.12.0
REVISION=	1

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += atspi cairo cairo-gobject crypto curl dbus-1 dbus-glib-1
WANTLIB += enchant evdocument3 evview3 expat ffi fontconfig freetype
WANTLIB += gailutil-3 gck-1 gcr-base-3 gcrypt gdata gdk-3 gdk_pixbuf-2.0
WANTLIB += geoclue gio-2.0 girepository-1.0 gjs glib-2.0 gmodule-2.0
WANTLIB += gnome-desktop-3 goa-1.0 gobject-2.0 gpg-error graphite2
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += harfbuzz harfbuzz-icu icudata icui18n icuuc idn javascriptcoregtk-3.0
WANTLIB += jpeg json-glib-1.0 kvm m mozjs-24 ncursesw nspr4
WANTLIB += nss3 oauth orc-0.4 p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += readline rest-0.7 secret-1 smime3 softokn3 soup-2.4
WANTLIB += soup-gnome-2.4 sqlite3 ssl ssl3 stdc++
WANTLIB += uuid webkitgtk-3.0 webp xcb xcb-render xcb-shm
WANTLIB += xml2 xslt z zapojit-0.0 mediaart-1.0
WANTLIB += tracker-control-${TRACKER_VERSION}
WANTLIB += tracker-sparql-${TRACKER_VERSION}
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-data
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-common

MODULES=	devel/gettext \
		devel/dconf \
		x11/gnome

LIB_DEPENDS=	devel/libgdata \
		graphics/evince \
		x11/gnome/desktop \
		x11/gnome/gjs \
		x11/gnome/libzapojit \
		x11/gnome/tracker

# src/application.js
RUN_DEPENDS +=	x11/gnome/online-miners

MODGNOME_TOOLS += desktop-file-utils docbook gobject-introspection
MODGNOME_TOOLS += gtk-update-icon-cache vala

# XXX --disable-getting-started is the default but configure checks for
# itstool(1) anyway
BUILD_DEPENDS +=	textproc/itstool

post-install:
	rm ${PREFIX}/lib/gnome-documents/*.{a,la}

.include <bsd.port.mk>
