# $OpenBSD: Makefile,v 1.12 2011/10/18 08:41:41 jasper Exp $

COMMENT=		interfaces for interacting with online accounts

GNOME_PROJECT=		gnome-online-accounts
GNOME_VERSION=		3.2.1

SHARED_LIBS +=  goa-1.0              0.0      # .0.0
SHARED_LIBS +=  goa-backend-1.0      0.0      # .0.0

HOMEPAGE=		https://live.gnome.org/OnlineAccounts

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt atk-1.0 c cairo cairo-gobject
WANTLIB += dbus-1 enchant expat ffi fontconfig freetype gailutil-3
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-keyring gobject-2.0 gpg-error gstapp-0.10 gstbase-0.10
WANTLIB += gstinterfaces-0.10 gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10
WANTLIB += gthread-2.0 gtk-3 icudata icui18n icuuc jpeg json-glib-1.0 m
WANTLIB += notify pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs rest-0.7 soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 stdc++ webkitgtk-3.0 xcb xcb-render xcb-shm
WANTLIB += xml2 xslt z javascriptcoregtk-3.0

BUILD_DEPENDS=		textproc/docbook-xsl
LIB_DEPENDS=		devel/json-glib \
			devel/libnotify \
			net/librest \
			www/webkit,gtk3>=1.6.1v0

MODGNOME_TOOLS= 	goi

# XXX: the libtool wrapper script is passed as argument to g-ir-scanner,
# instead of the actual library
USE_LIBTOOL=		gnu

CONFIGURE_ARGS=		--localstatedir=/var

.include <bsd.port.mk>
