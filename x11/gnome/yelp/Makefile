# $OpenBSD: Makefile,v 1.108 2015/04/15 09:40:54 ajacoutot Exp $

COMMENT=		GNOME help browser

GNOME_PROJECT=		yelp
GNOME_VERSION=		3.16.0
REVISION=		1

SHARED_LIBS +=  yelp                 0.0      # unknown

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject dbus-1 enchant epoxy
WANTLIB += expat exslt ffi fontconfig freetype gbm gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstfft-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz harfbuzz-icu
WANTLIB += icudata icui18n icuuc javascriptcoregtk-3.0 jpeg lzma
WANTLIB += m orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs secret-1 soup-2.4
WANTLIB += sqlite3 stdc++ webkitgtk-3.0 webp xcb xcb-render xcb-shm
WANTLIB += xml2 xslt z

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

BUILD_DEPENDS=		x11/gnome/yelp-xsl \
			textproc/itstool

RUN_DEPENDS=		x11/gnome/yelp-xsl

LIB_DEPENDS=		archivers/xz \
			www/webkit,gtk3

MODGNOME_TOOLS=		desktop-file-utils

.include <bsd.port.mk>
