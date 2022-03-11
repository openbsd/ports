COMMENT=		deprecated API for integrating Xlib and GdkPixbuf

GNOME_PROJECT=		gdk-pixbuf-xlib
GNOME_VERSION=		2.40.2

CATEGORIES=		graphics

SHARED_LIBS += gdk_pixbuf_xlib-2.0       3200.1 # 0.4000.2

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += X11 gdk_pixbuf-2.0 glib-2.0

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		graphics/gdk-pixbuf2

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
