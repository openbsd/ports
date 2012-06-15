# $OpenBSD: Makefile,v 1.62 2012/06/15 08:30:19 ajacoutot Exp $

COMMENT=	API documentation browser for GNOME

GNOME_PROJECT=	devhelp
GNOME_VERSION=	3.4.1
REVISION=	0

SHARED_LIBS +=  devhelp-3                 0.0 # 0.0

CATEGORIES=	textproc

HOMEPAGE=	http://live.gnome.org/devhelp

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm
WANTLIB += atk-1.0 c cairo cairo-gobject drm enchant expat fontconfig
WANTLIB += freetype gailutil-3 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gstapp-0.10 gstbase-0.10 gstinterfaces-0.10
WANTLIB += gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10 gthread-2.0
WANTLIB += gtk-3 icudata icui18n icuuc jpeg m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 sqlite3 stdc++ webkitgtk-3.0 xcb xcb-render
WANTLIB += dbus-1 dbus-glib-1 ffi orc-0.4
WANTLIB += xcb-shm xml2 xslt z javascriptcoregtk-3.0

MODULES=	devel/gettext \
		lang/python \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	x11/gnome/doc-utils
LIB_DEPENDS=	www/webkit,gtk3>=1.6.1v0

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGCONF2_SCHEMAS_DIR=	devhelp

.include <bsd.port.mk>
