# $OpenBSD: Makefile,v 1.105 2018/05/08 07:14:06 ajacoutot Exp $

# XXX: PORTROACH set below to override the value from gnome.port.mk

COMMENT=		people aggregation library

GNOME_PROJECT=		folks
GNOME_VERSION=		0.11.4
REVISION=		10

# MODULE_VERSION in config.h
API_V=			43

SHARED_LIBS +=  folks                5.5      # 43.3
SHARED_LIBS +=  folks-dummy          0.0      # 43.3
SHARED_LIBS +=  folks-telepathy      5.2      # 43.3
SHARED_LIBS +=  folks-eds            1.2      # 43.3

SUBST_VARS=		API_V

HOMEPAGE=		https://wiki.gnome.org/Projects/Folks

WANTLIB += ${COMPILER_LIBCXX} EGL GL GLESv2 ICE SM X11 X11-xcb
WANTLIB += Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xt Xxf86vm atk-1.0 atk-bridge-2.0 atspi
WANTLIB += brotlicommon brotlidec c cairo cairo-gobject camel-1.2
WANTLIB += crypto curl curses db dbus-1 dbus-glib-1 drm ebackend-1.2
WANTLIB += ebook-1.2 ebook-contacts-1.2 edata-book-1.2 edataserver-1.2
WANTLIB += enchant epoxy expat ffi fontconfig freetype fribidi
WANTLIB += gbm gck-1 gcr-base-3 gcrypt gdata gdk-3 gdk_pixbuf-2.0
WANTLIB += gee-0.8 gio-2.0 glapi glib-2.0 gmodule-2.0 goa-1.0
WANTLIB += gobject-2.0 gpg-error graphite2 gstallocators-1.0 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstgl-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += harfbuzz harfbuzz-icu hyphen iconv icudata icui18n
WANTLIB += icuuc intl javascriptcoregtk-4.0 jpeg json-glib-1.0
WANTLIB += lzma m nghttp2 notify nspr4 nss3 nssutil3 oauth orc-0.4
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 plc4 plds4 png readline secret-1 smime3 soup-2.4
WANTLIB += sqlite3 ssl ssl3 tasn1 telepathy-glib webkit2gtk-4.0
WANTLIB += webp webpdemux woff2common woff2dec xcb xcb-dri2 xcb-glx
WANTLIB += xcb-render xcb-shm xcb-xfixes xml2 xslt z

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
