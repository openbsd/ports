# $OpenBSD: Makefile,v 1.88 2013/03/11 11:46:12 espie Exp $

COMMENT=		GNOME help browser

GNOME_PROJECT=		yelp
GNOME_VERSION=		3.6.2

SHARED_LIBS +=  yelp                      0.0 # 0.0

HOMEPAGE=		https://projects.gnome.org/yelp/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += bz2 c cairo cairo-gobject dbus-1 dbus-glib-1 drm enchant
WANTLIB += expat exslt ffi fontconfig freetype gailutil-3 gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 geoclue gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error gstapp-0.10 gstaudio-0.10 gstbase-0.10
WANTLIB += gstfft-0.10 gstinterfaces-0.10 gstpbutils-0.10 gstreamer-0.10
WANTLIB += gstvideo-0.10 gthread-2.0 gtk-3 icudata icui18n icuuc
WANTLIB += javascriptcoregtk-3.0 jpeg lzma m orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs soup-2.4 sqlite3 stdc++ webkitgtk-3.0
WANTLIB += atk-bridge-2.0 atspi harfbuzz icule
WANTLIB += xcb xcb-render xcb-shm xml2 xslt z

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf

BUILD_DEPENDS=		x11/gnome/yelp-xsl>=3.6.0 \
			textproc/itstool
RUN_DEPENDS=		x11/gnome/yelp-xsl>=3.6.0

LIB_DEPENDS=		archivers/xz \
			www/webkit,gtk3

MODGNOME_DESKTOP_FILE=	Yes

CONFIGURE_ARGS+= 	--enable-lzma \
			--enable-bz2

.include <bsd.port.mk>
