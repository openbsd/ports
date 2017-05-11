# $OpenBSD: Makefile,v 1.93 2017/05/11 20:27:07 espie Exp $

COMMENT=	interfaces for interacting with online accounts

GNOME_PROJECT=	gnome-online-accounts
GNOME_VERSION=	3.24.0

SHARED_LIBS +=  goa-1.0              4.0      # .0.0
SHARED_LIBS +=  goa-backend-1.0      4.0      # .1.0

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject dbus-1 dbus-glib-1
WANTLIB += drm enchant epoxy $(LIBCXX) expat ffi fontconfig freetype
WANTLIB += gbm gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gpg-error graphite2 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += harfbuzz harfbuzz-icu hyphen iconv icudata icui18n
WANTLIB += icuuc intl javascriptcoregtk-4.0 jpeg json-glib-1.0
WANTLIB += lzma m notify orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs rest-0.7 secret-1
WANTLIB += soup-2.4 soup-gnome-2.4 sqlite3 ${LIBCXX} telepathy-glib
WANTLIB += webkit2gtk-4.0 webp xcb xcb-dri2 xcb-glx xcb-render
WANTLIB += xcb-shm xcb-xfixes xml2 xslt z

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		devel/json-glib \
			net/librest \
			net/telepathy/telepathy-glib \
			x11/gnome/libsecret \
			www/webkitgtk4

MODGNOME_TOOLS += 	docbook gobject-introspection gtk-update-icon-cache vala

MODGNU_CONFIG_GUESS_DIRS= \
			${WRKSRC} \
			${WRKSRC}/telepathy-account-widgets

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-gudev

post-install:
	rm ${PREFIX}/lib/goa-1.0/web-extensions/*.{a,la}

.include <bsd.port.mk>
