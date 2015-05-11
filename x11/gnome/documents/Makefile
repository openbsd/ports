# $OpenBSD: Makefile,v 1.56 2015/05/11 17:22:38 ajacoutot Exp $

TRACKER_API=		1.0

SHARED_ONLY=		Yes

COMMENT=		document and e-books manager for GNOME

GNOME_PROJECT=		gnome-documents
GNOME_VERSION=		3.16.2

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm
WANTLIB += atk-1.0 atk-bridge-2.0 atspi cairo cairo-gobject crypto
WANTLIB += curl dbus-1 drm enchant epoxy estdc++ evdocument3 evview3
WANTLIB += expat ffi fontconfig freetype gbm gck-1 gcr-base-3
WANTLIB += gcrypt gdata gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += gjs glapi glib-2.0 gmodule-2.0 gmp gnome-desktop-3
WANTLIB += gnutls goa-1.0 gobject-2.0 gpg-error graphite2 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += harfbuzz harfbuzz-icu hogweed icudata icui18n icuuc
WANTLIB += idn javascriptcoregtk-4.0 jpeg json-glib-1.0 kvm lzma
WANTLIB += m mediaart-2.0 mozjs-24 ncursesw nettle notify nspr4
WANTLIB += nss3 oauth orc-0.4 p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += readline rest-0.7 secret-1 smime3 softokn3 soup-2.4
WANTLIB += soup-gnome-2.4 sqlite3 ssl ssl3 stdc++ tasn1 uuid webkit2gtk-4.0
WANTLIB += webp xcb xcb-dri2 xcb-glx xcb-render xcb-shape xcb-shm
WANTLIB += xcb-xfixes xml2 xslt z zapojit-0.0
WANTLIB += tracker-control-${TRACKER_API}
WANTLIB += tracker-sparql-${TRACKER_API}
WANTLIB += lib/tracker-${TRACKER_API}/tracker-data
WANTLIB += lib/tracker-${TRACKER_API}/tracker-common

MODULES=		devel/gettext \
			devel/dconf \
			x11/gnome

MODGNOME_TOOLS +=	desktop-file-utils gobject-introspection docbook
MODGNOME_TOOLS += 	gtk-update-icon-cache vala yelp

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
