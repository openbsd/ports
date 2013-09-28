# $OpenBSD: Makefile,v 1.96 2013/09/28 08:51:33 ajacoutot Exp $

COMMENT=		GNOME help browser

GNOME_PROJECT=		yelp
GNOME_VERSION=		3.10.0
REVISION=		0

SHARED_LIBS +=  yelp                      0.0 # 0.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject dbus-1 dbus-glib-1
WANTLIB += enchant expat exslt ffi fontconfig freetype gailutil-3
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 geoclue gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gpg-error graphite2 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += harfbuzz harfbuzz-icu icudata icui18n icuuc javascriptcoregtk-3.0
WANTLIB += jpeg lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs secret-1 soup-2.4
WANTLIB += sqlite3 stdc++ webkitgtk-3.0 webp xcb xcb-render xcb-shm
WANTLIB += xml2 xslt z

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
