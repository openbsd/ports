# $OpenBSD: Makefile,v 1.77 2017/05/11 13:56:55 ajacoutot Exp $

TRACKER_API=		1.0

COMMENT=		document and e-books manager for GNOME

GNOME_PROJECT=		gnome-documents
GNOME_VERSION=		3.24.2

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi cairo cairo-gobject dbus-1 drm
WANTLIB += enchant epoxy estdc++ evdocument3 evview3 expat ffi
WANTLIB += fontconfig freetype gbm gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 gjs glapi glib-2.0 gmodule-2.0
WANTLIB += gnome-desktop-3 gobject-2.0 gpg-error graphite2 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += harfbuzz harfbuzz-icu hyphen iconv icudata icui18n
WANTLIB += icuuc intl javascriptcoregtk-4.0 jpeg json-glib-1.0
WANTLIB += kvm lzma m mediaart-2.0 mozjs-38 ncursesw notify orc-0.4
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs readline secret-1 soup-2.4
WANTLIB += sqlite3 uuid webkit2gtk-4.0 webp xcb xcb-dri2 xcb-glx
WANTLIB += xcb-render xcb-shm xcb-xfixes xml2 xslt z
WANTLIB += tracker-control-${TRACKER_API}
WANTLIB += tracker-sparql-${TRACKER_API}
WANTLIB += lib/tracker-${TRACKER_API}/tracker-data
WANTLIB += lib/tracker-${TRACKER_API}/tracker-common

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS +=	desktop-file-utils gobject-introspection docbook
MODGNOME_TOOLS += 	gtk-update-icon-cache yelp

# Gepub-0.4.gir
BUILD_DEPENDS +=	x11/gnome/libgepub
RUN_DEPENDS +=		x11/gnome/libgepub

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
