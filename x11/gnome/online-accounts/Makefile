# $OpenBSD: Makefile,v 1.39 2013/09/28 08:51:26 ajacoutot Exp $

COMMENT=	interfaces for interacting with online accounts

GNOME_PROJECT=	gnome-online-accounts
GNOME_VERSION=	3.10.0
REVISION=	0

SHARED_LIBS +=  goa-1.0              2.0      # .0.0
SHARED_LIBS +=  goa-backend-1.0      2.0      # .0.0

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject dbus-1 dbus-glib-1 enchant
WANTLIB += expat ffi fontconfig freetype gailutil-3 gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 geoclue gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error graphite2 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += harfbuzz-icu icudata icui18n icuuc javascriptcoregtk-3.0
WANTLIB += jpeg json-glib-1.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs rest-0.7 secret-1
WANTLIB += soup-2.4 sqlite3 stdc++ telepathy-glib webkitgtk-3.0
WANTLIB += webp xcb xcb-render xcb-shm xml2 xslt z

MODULES=		devel/gettext \
			x11/gnome

# man pages
BUILD_DEPENDS += 	textproc/docbook-xsl

LIB_DEPENDS=		devel/json-glib \
			net/librest \
			net/telepathy/telepathy-glib \
			x11/gnome/libsecret \
			www/webkit,gtk3

MODGNOME_TOOLS= 	gi
MODGNOME_ICON_CACHE=	Yes

# XXX: Remove when patch-configure_ac et al are removed
AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf

.include <bsd.port.mk>
