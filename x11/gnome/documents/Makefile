# $OpenBSD: Makefile,v 1.21 2013/08/30 12:07:07 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	document manager for GNOME

GNOME_PROJECT=	gnome-documents
GNOME_VERSION=	3.8.4

HOMEPAGE=	https://live.gnome.org/GnomeDocuments

TRACKER_VERSION=0.16
SUBST_VARS=	TRACKER_VERSION

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject crypto curl dbus-1 dbus-glib-1
WANTLIB += uuid enchant evdocument3 evview3 expat ffi fontconfig
WANTLIB += freetype gailutil-3 gck-1 gcr-base-3 gcrypt gdata gdk-3
WANTLIB += gdk_pixbuf-2.0 geoclue gio-2.0 girepository-1.0 gjs
WANTLIB += glib-2.0 gmodule-2.0 gnome-desktop-3 goa-1.0 gobject-2.0
WANTLIB += gpg-error graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstfft-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz icui18n
WANTLIB += idn javascriptcoregtk-3.0 jpeg json-glib-1.0
WANTLIB += kvm m mozjs-17.0 ncursesw nspr4 nss3 oauth orc-0.4 p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += plc4 plds4 png pthread pthread-stubs readline rest-0.7
WANTLIB += secret-1 smime3 softokn3 soup-2.4 soup-gnome-2.4 sqlite3
WANTLIB += ssl ssl3 stdc++ tracker-miner-0.16 webkitgtk-3.0 webp
WANTLIB += xcb xcb-render xcb-shm xkbfile xml2 xslt z zapojit-0.0
WANTLIB += harfbuzz-icu icudata icuuc
WANTLIB += tracker-sparql-${TRACKER_VERSION}
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-data
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-common

MODULES=	devel/gettext \
		devel/dconf \
		x11/gnome

# desktop-file-validate(1), needed for 'make test'
BUILD_DEPENDS +=devel/desktop-file-utils

# man pages
BUILD_DEPENDS += textproc/docbook-xsl

LIB_DEPENDS=	devel/libgdata \
		graphics/evince \
		x11/gnome/gjs \
		x11/gnome/libzapojit \
		x11/gnome/tracker

MODGNOME_TOOLS=		gi vala
MODGNOME_ICON_CACHE=	Yes
MODGNOME_DESKTOP_FILE=	Yes

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_ARGS=	--disable-static

# XXX --disable-getting-started is the default but configure checks for
# itstool(1) anyway
BUILD_DEPENDS +=	textproc/itstool

post-install:
	rm ${PREFIX}/lib/gnome-documents/*.la

.include <bsd.port.mk>
