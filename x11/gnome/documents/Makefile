# $OpenBSD: Makefile,v 1.68 2016/11/04 11:35:21 sthen Exp $

TRACKER_API=		1.0

COMMENT=		document and e-books manager for GNOME

GNOME_PROJECT=		gnome-documents
GNOME_VERSION=		3.22.0
REVISION=		0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi cairo cairo-gobject crypto curl
WANTLIB += dbus-1 drm enchant epoxy estdc++ evdocument3 evview3
WANTLIB += expat ffi fontconfig freetype gbm gck-1 gcr-base-3
WANTLIB += gcrypt gdata gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += gjs glapi glib-2.0 gmodule-2.0 gmp gnome-desktop-3
WANTLIB += gnutls goa-1.0 gobject-2.0 gpg-error graphite2 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += harfbuzz harfbuzz-icu hogweed hyphen iconv icudata
WANTLIB += icui18n icuuc intl javascriptcoregtk-4.0 jpeg json-glib-1.0
WANTLIB += kvm lzma m mediaart-2.0 mozjs-24 ncursesw nettle nghttp2
WANTLIB += notify nspr4 nss3 oauth orc-0.4 p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += readline rest-0.7 secret-1 smime3 softokn3 soup-2.4
WANTLIB += soup-gnome-2.4 sqlite3 ssl ssl3 stdc++ tasn1 uuid webkit2gtk-4.0
WANTLIB += webp xcb xcb-dri2 xcb-glx xcb-render xcb-shm xcb-xfixes
WANTLIB += xml2 xslt z zapojit-0.0
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

LIB_DEPENDS=		devel/libgdata \
			evince-*-!light:graphics/evince \
			www/webkitgtk4 \
			x11/gnome/desktop \
			x11/gnome/gjs \
			x11/gnome/libzapojit \
			x11/gnome/tracker

# gnome-books
RUN_DEPENDS +=		x11/gnome/epub-thumbnailer

# src/application.js
RUN_DEPENDS +=		x11/gnome/online-miners

post-install:
	rm ${PREFIX}/lib/gnome-documents/*.{a,la}

.include <bsd.port.mk>
