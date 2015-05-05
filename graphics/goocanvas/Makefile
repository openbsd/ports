# $OpenBSD: Makefile,v 1.18 2015/05/05 17:00:17 sthen Exp $

PORTROACH=		limit:^1

COMMENT=		canvas widget for GTK+ based on Cairo

GNOME_PROJECT=		goocanvas
GNOME_VERSION=		1.0.0
SHARED_LIBS +=  goocanvas            1.0      # .6.0
CATEGORIES=		graphics
REVISION=		4

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs pthread stdc++ xcb
WANTLIB += xcb-render xcb-shm z

EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		x11/gnome/doc-utils
LIB_DEPENDS=		x11/gtk+2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
