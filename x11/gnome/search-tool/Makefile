# $OpenBSD: Makefile,v 1.2 2012/04/01 16:01:11 ajacoutot Exp $

COMMENT=		GNOME tool to search files

GNOME_PROJECT=		gnome-search-tool
GNOME_VERSION=		3.4.0
REVISION=		0

# GPLv2 - GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject dbus-1 dbus-glib-1 drm expat
WANTLIB += ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-3
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs stdc++ xcb xcb-render xcb-shm
WANTLIB += z

LIB_DEPENDS=		x11/gtk+3

MODULES=		devel/gconf2 \
			devel/gettext \
			x11/gnome

MODGCONF2_SCHEMAS_DIR=	gnome-search-tool
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_TOOLS=		yelp

CONFIGURE_ARGS=		--with-grep="/usr/bin/grep"

.include <bsd.port.mk>
