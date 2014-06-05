# $OpenBSD: Makefile,v 1.58 2014/06/05 16:30:23 jasper Exp $

COMMENT=	interfaces for interacting with online accounts

GNOME_PROJECT=	gnome-online-accounts
GNOME_VERSION=	3.12.3

SHARED_LIBS +=  goa-1.0              3.0      # .0.0
SHARED_LIBS +=  goa-backend-1.0      3.0      # .0.0

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject dbus-1 dbus-glib-1 enchant
WANTLIB += expat ffi fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += geoclue gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 gtk-3 harfbuzz harfbuzz-icu icudata icui18n
WANTLIB += icuuc javascriptcoregtk-3.0 jpeg json-glib-1.0 m orc-0.4
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs rest-0.7 secret-1 soup-2.4
WANTLIB += soup-gnome-2.4 sqlite3 stdc++ telepathy-glib webkitgtk-3.0
WANTLIB += webp xcb xcb-render xcb-shm xml2 xslt z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/json-glib \
			net/librest \
			net/telepathy/telepathy-glib \
			x11/gnome/libsecret \
			www/webkit,gtk3

MODGNOME_TOOLS += 	docbook gobject-introspection gtk-update-icon-cache

MODGNU_CONFIG_GUESS_DIRS= \
			${WRKSRC} \
			${WRKSRC}/telepathy-account-widgets

CONFIGURE_ARGS=		--disable-gudev

.include <bsd.port.mk>
