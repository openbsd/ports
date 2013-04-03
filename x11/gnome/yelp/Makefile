# $OpenBSD: Makefile,v 1.90 2013/04/03 11:35:43 ajacoutot Exp $

COMMENT=		GNOME help browser

GNOME_PROJECT=		yelp
GNOME_VERSION=		3.8.0
REVISION=		0

SHARED_LIBS +=  yelp                      0.0 # 0.0

HOMEPAGE=		https://projects.gnome.org/yelp/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject dbus-1 dbus-glib-1
WANTLIB += enchant expat exslt ffi fontconfig freetype gailutil-3
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 geoclue gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gpg-error graphite2 gstapp-0.10
WANTLIB += gstaudio-0.10 gstbase-0.10 gstfft-0.10 gstinterfaces-0.10
WANTLIB += gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10 gthread-2.0
WANTLIB += gtk-3 harfbuzz icudata icui18n icule icuuc javascriptcoregtk-3.0
WANTLIB += jpeg lzma m orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs soup-2.4 sqlite3
WANTLIB += stdc++ webkitgtk-3.0 xcb xcb-render xcb-shm xml2 xslt
WANTLIB += z

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf

BUILD_DEPENDS=		x11/gnome/yelp-xsl \
			textproc/itstool
RUN_DEPENDS=		x11/gnome/yelp-xsl

LIB_DEPENDS=		archivers/xz \
			www/webkit,gtk3

MODGNOME_DESKTOP_FILE=	Yes

.include <bsd.port.mk>
