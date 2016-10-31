# $OpenBSD: Makefile,v 1.84 2016/10/31 11:48:38 ajacoutot Exp $

# XXX: PORTROACH set below to override the value from gnome.port.mk

COMMENT=		people aggregation library

GNOME_PROJECT=		folks
GNOME_VERSION=		0.11.3
# MODULE_VERSION in config.h
API_V=			43
REVISION=		0

SHARED_LIBS +=  folks-telepathy           5.2 # 43.0
SHARED_LIBS +=  folks                     5.5 # 43.0
SHARED_LIBS +=  folks-eds                 1.2 # 43.0
SHARED_LIBS +=  folks-dummy               0.0 # 43.0

SUBST_VARS=		API_V

HOMEPAGE=		https://wiki.gnome.org/Projects/Folks

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject camel-1.2 db dbus-1 dbus-glib-1
WANTLIB += drm ebackend-1.2 ebook-1.2 ebook-contacts-1.2 edata-book-1.2
WANTLIB += edataserver-1.2 epoxy expat ffi fontconfig freetype
WANTLIB += gbm gck-1 gcr-base-3 gcrypt gdk-3 gdk_pixbuf-2.0 gee-0.8
WANTLIB += gio-2.0 glapi glib-2.0 gmodule-2.0 gmp gobject-2.0
WANTLIB += gpg-error graphite2 gstaudio-1.0 gstbase-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += hogweed iconv icudata icui18n icuuc idn intl javascriptcoregtk-4.0
WANTLIB += json-glib-1.0 lzma m ncurses nettle nspr4 nss3 orc-0.4
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 plc4 plds4 png pthread pthread-stubs readline
WANTLIB += secret-1 smime3 softokn3 soup-2.4 sqlite3 ssl3 stdc++
WANTLIB += tasn1 telepathy-glib webkit2gtk-4.0 xcb xcb-dri2 xcb-glx
WANTLIB += xcb-render xcb-shm xcb-xfixes xml2 z

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		databases/evolution-data-server \
			devel/libgee \
			net/telepathy/telepathy-glib

# needed at runtime by the telepathy backend (AccountManager)
RUN_DEPENDS=		net/telepathy/telepathy-mission-control

TEST_DEPENDS=		${FULLPKGNAME}:${BASE_PKGPATH}

MODGNOME_TOOLS +=	gobject-introspection vala
MODGNOME_CPPFLAGS +=	-L${X11BASE}/lib

# requires libofono (not ported)
CONFIGURE_ARGS += 	--disable-ofono-backend

# no Bluez stack on OpenBSD
CONFIGURE_ARGS +=	--disable-bluez-backend

# https://git.gnome.org/browse/folks/commit/Makefile.am?id=8ebe13c457660de380521874a006425083151741
CONFIGURE_ARGS += 	--disable-fatal-warnings

post-install:
	rm ${PREFIX}/lib/folks/${API_V}/backends/*/*.{a,la}

.include <bsd.port.mk>

PORTROACH=	# empty
