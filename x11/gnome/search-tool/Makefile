# $OpenBSD: Makefile,v 1.8 2013/09/28 08:51:28 ajacoutot Exp $

COMMENT=		GNOME tool to search files

GNOME_PROJECT=		gnome-search-tool
GNOME_VERSION=		3.6.0
REVISION=		1

# GPLv2 - GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject dbus-1 drm expat
WANTLIB += ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-3
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs stdc++ xcb xcb-render xcb-shm
WANTLIB += z atk-bridge-2.0 atspi harfbuzz

LIB_DEPENDS=		x11/gtk+3>=3.6.0

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_TOOLS=		yelp

CONFIGURE_ARGS=		--with-grep="/usr/bin/grep"

.include <bsd.port.mk>
