# $OpenBSD: Makefile,v 1.87 2017/11/03 13:51:53 ajacoutot Exp $

TRACKER_API=		2.0

COMMENT=		document and e-books manager for GNOME

GNOME_PROJECT=		gnome-documents
GNOME_VERSION=		3.26.1

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL GLESv2 ICE SM X11 X11-xcb
WANTLIB += Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xt Xtst Xxf86vm atk-1.0 atk-bridge-2.0
WANTLIB += atspi cairo cairo-gobject dbus-1 drm enchant epoxy
WANTLIB += evdocument3 evview3 expat ffi fontconfig freetype gbm
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += gjs glapi glib-2.0 gmodule-2.0 gnome-desktop-3 gobject-2.0
WANTLIB += gpg-error graphite2 gstallocators-1.0 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbadallocators-1.0 gstbase-1.0 gstfft-1.0 gstgl-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 gtk-3 harfbuzz harfbuzz-icu hyphen iconv
WANTLIB += icudata icui18n icuuc intl javascriptcoregtk-4.0 jpeg
WANTLIB += json-glib-1.0 kvm lzma m mozjs-52 ncursesw notify orc-0.4
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png readline secret-1 soup-2.4 sqlite3 tasn1 uuid webkit2gtk-4.0
WANTLIB += webp xcb xcb-dri2 xcb-glx xcb-render xcb-shm xcb-xfixes
WANTLIB += xml2 xslt z
WANTLIB += tracker-control-${TRACKER_API}
WANTLIB += tracker-sparql-${TRACKER_API}
WANTLIB += lib/tracker-${TRACKER_API}/tracker-data
WANTLIB += lib/tracker-${TRACKER_API}/tracker-common

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS +=	desktop-file-utils gobject-introspection docbook
MODGNOME_TOOLS += 	gtk-update-icon-cache yelp

# sync with x11/gnome/gjs
COMPILER=		base-clang ports-clang ports-gcc

# GData-0.0.gir, Gepub-0.4.gir Zpj-0.0.gir
BUILD_DEPENDS +=	devel/libgdata \
			x11/gnome/libgepub \
			x11/gnome/libzapojit
RUN_DEPENDS +=		devel/libgdata \
			x11/gnome/libgepub \
			x11/gnome/libzapojit

# XXX --disable-getting-started is the default but configure checks for
# itstool(1) anyway
BUILD_DEPENDS +=	textproc/itstool

LIB_DEPENDS=		evince-*-!light:graphics/evince \
			www/webkitgtk4 \
			x11/gnome/desktop \
			x11/gnome/gjs \
			x11/gnome/tracker

# gnome-books
RUN_DEPENDS +=		x11/gnome/epub-thumbnailer

# src/application.js
RUN_DEPENDS +=		x11/gnome/online-miners

CONFIGURE_STYLE=	gnu

post-install:
	rm ${PREFIX}/lib/gnome-documents/*.{a,la}

.include <bsd.port.mk>
