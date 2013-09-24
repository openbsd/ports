# $OpenBSD: Makefile,v 1.37 2013/09/24 18:53:30 ajacoutot Exp $

COMMENT=	interfaces for interacting with online accounts

GNOME_PROJECT=	gnome-online-accounts
GNOME_VERSION=	3.8.3
REVISION=	0

SHARED_LIBS +=  goa-1.0              2.0      # .0.0
SHARED_LIBS +=  goa-backend-1.0      2.0      # .0.0

HOMEPAGE=	https://live.gnome.org/OnlineAccounts

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0
WANTLIB += c cairo cairo-gobject dbus-1 enchant expat ffi
WANTLIB += fontconfig freetype gailutil-3 gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error gstapp-1.0 gstbase-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gstvideo-1.0 gthread-2.0
WANTLIB += gtk-3 icui18n javascriptcoregtk-3.0 jpeg
WANTLIB += json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += rest-0.7 soup-2.4 soup-gnome-2.4 sqlite3 stdc++ webkitgtk-3.0
WANTLIB += xcb xcb-render xcb-shm xml2 xslt z graphite2
WANTLIB += dbus-glib-1 geoclue gstaudio-1.0 gstfft-1.0
WANTLIB += atk-bridge-2.0 atspi harfbuzz secret-1 gsttag-1.0 webp
WANTLIB += harfbuzz-icu icudata icuuc

MODULES=		devel/gettext \
			x11/gnome

# man pages
BUILD_DEPENDS += 	textproc/docbook-xsl

LIB_DEPENDS=		devel/json-glib \
			net/librest \
			x11/gnome/libsecret \
			www/webkit,gtk3

MODGNOME_TOOLS= 	gi
MODGNOME_ICON_CACHE=	Yes

.include <bsd.port.mk>
