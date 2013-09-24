# $OpenBSD: Makefile,v 1.73 2013/09/24 18:53:30 ajacoutot Exp $

COMMENT=	API documentation browser for GNOME

GNOME_PROJECT=	devhelp
GNOME_VERSION=	3.8.2
REVISION=	1

SHARED_LIBS +=  devhelp-3                 0.0 # 0.0

CATEGORIES=	textproc

HOMEPAGE=	http://live.gnome.org/devhelp

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject dbus-1 dbus-glib-1 enchant
WANTLIB += expat ffi fontconfig freetype gailutil-3 gcrypt gdk-3
WANTLIB += gdk_pixbuf-2.0 geoclue gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error graphite2 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += icui18n javascriptcoregtk-3.0 jpeg
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs secret-1 soup-2.4
WANTLIB += sqlite3 stdc++ webkitgtk-3.0 webp xcb xcb-render xcb-shm
WANTLIB += xml2 xslt z

MODULES=	devel/dconf \
		devel/gettext \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	x11/gnome/doc-utils
LIB_DEPENDS=	www/webkit,gtk3>=2.0.0

# for convenience
RUN_DEPENDS +=	x11/gnome/devel-docs

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

CONFIGURE_ARGS +=	--without-webkit2

.include <bsd.port.mk>
