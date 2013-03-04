# $OpenBSD: Makefile,v 1.27 2013/03/04 14:15:31 jasper Exp $

# XXX Kerberos support is disabled because our Heimdal is too old

COMMENT=	interfaces for interacting with online accounts

GNOME_PROJECT=	gnome-online-accounts
GNOME_VERSION=	3.6.3

SHARED_LIBS +=  goa-1.0              1.0      # .0.0
SHARED_LIBS +=  goa-backend-1.0      1.0      # .0.0

HOMEPAGE=	https://live.gnome.org/OnlineAccounts

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0
WANTLIB += c cairo cairo-gobject dbus-1 enchant expat ffi
WANTLIB += fontconfig freetype gailutil-3 gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-keyring gobject-2.0
WANTLIB += gpg-error gstapp-0.10 gstbase-0.10 gstinterfaces-0.10
WANTLIB += gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10 gthread-2.0
WANTLIB += gtk-3 icudata icui18n icuuc javascriptcoregtk-3.0 jpeg
WANTLIB += json-glib-1.0 m notify orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += rest-0.7 soup-2.4 soup-gnome-2.4 sqlite3 stdc++ webkitgtk-3.0
WANTLIB += xcb xcb-render xcb-shm xml2 xslt z
WANTLIB += dbus-glib-1 geoclue gstaudio-0.10 gstfft-0.10
WANTLIB += atk-bridge-2.0 atspi harfbuzz icule secret-1

MODULES=		devel/gettext \
			x11/gnome

# man pages
BUILD_DEPENDS += textproc/docbook-xsl

LIB_DEPENDS=		devel/json-glib \
			devel/libnotify \
			net/librest \
			x11/gnome/libsecret \
			www/webkit,gtk3

MODGNOME_TOOLS= 	goi
MODGNOME_ICON_CACHE=	Yes

.include <bsd.port.mk>
