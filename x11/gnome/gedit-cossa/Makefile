# $OpenBSD: Makefile,v 1.5 2013/09/28 08:51:18 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	themes design plugin for Gedit

GNOME_PROJECT=	gedit-cossa
GNOME_VERSION=	3.2.0
REVISION=	2

CATEGORIES=	editors

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext \
		x11/gnome

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject drm expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-3 gtksourceview-3.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0
WANTLIB += pixman-1 png pthread pthread-stubs stdc++ xcb xcb-render
WANTLIB += xcb-shm xml2 z

RUN_DEPENDS=	x11/gnome/gedit
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	devel/libpeas \
		x11/gtksourceview3

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_ARGS=	--disable-static

post-install:
	rm ${PREFIX}/lib/gedit/plugins/*.la

.include <bsd.port.mk>
