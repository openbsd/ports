# $OpenBSD: Makefile,v 1.26 2013/03/11 11:46:11 espie Exp $

COMMENT=	GNOME interface for various networking tools

GNOME_PROJECT=	gnome-nettool
GNOME_VERSION=	3.2.0
REVISION=	1

CATEGORIES=	net

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject drm expat fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 gtop-2.0 kvm m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm z ffi stdc++

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/libgtop2 \
		x11/gtk+3
BUILD_DEPENDS=	devel/gsettings-desktop-schemas
RUN_DEPENDS=	devel/gsettings-desktop-schemas \
		net/nmap

MODGNOME_TOOLS= yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

.include <bsd.port.mk>
