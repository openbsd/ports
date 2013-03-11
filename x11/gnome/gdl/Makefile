# $OpenBSD: Makefile,v 1.38 2013/03/11 11:46:10 espie Exp $

COMMENT=		GNOME Docking Library

GNOME_PROJECT=		gdl
GNOME_VERSION=		3.6.2
REVISION=		0

SHARED_LIBS +=  gdl-3                3.0      # 5.1

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB += drm expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread-stubs xcb xcb-render xcb-shm xml2
WANTLIB += z stdc++ pthread
WANTLIB += ICE SM atk-bridge-2.0 atspi dbus-1 harfbuzz icudata
WANTLIB += icule icuuc

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	textproc/libxml \
		x11/gtk+3

MODGNOME_TOOLS= goi

.include <bsd.port.mk>
