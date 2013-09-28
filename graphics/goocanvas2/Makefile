# $OpenBSD: Makefile,v 1.14 2013/09/28 08:50:42 ajacoutot Exp $

COMMENT=		canvas widget for GTK+ based on Cairo

GNOME_PROJECT=		goocanvas
GNOME_VERSION=		2.0.1
PKGNAME=		goocanvas2-${GNOME_VERSION}
REVISION=		3

SHARED_LIBS +=  goocanvas-2.0             0.0 # 11.0
CATEGORIES=		graphics

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo cairo-gobject
WANTLIB += expat fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread-stubs xcb xcb-render xcb-shm z
WANTLIB += ffi

MODULES=	devel/gettext \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/py-gobject3
LIB_DEPENDS=	x11/gtk+3

AUTOCONF_VERSION=2.68
CONFIGURE_STYLE=autoconf

MODGNOME_TOOLS= gi

.include <bsd.port.mk>
