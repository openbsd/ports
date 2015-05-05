# $OpenBSD: Makefile,v 1.20 2015/05/05 17:00:17 sthen Exp $

COMMENT=		canvas widget for GTK+ based on Cairo

GNOME_PROJECT=		goocanvas
GNOME_VERSION=		2.0.2
PKGNAME=		goocanvas2-${GNOME_VERSION}
REVISION=		1

SHARED_LIBS +=  goocanvas-2.0             0.0 # 11.0
CATEGORIES=		graphics

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi cairo
WANTLIB += cairo-gobject dbus-1 epoxy expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs xcb xcb-render xcb-shm z

MODULES=	devel/gettext \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/py-gobject3
LIB_DEPENDS=	x11/gtk+3

CONFIGURE_STYLE=gnu

MODGNOME_TOOLS +=	gobject-introspection

.include <bsd.port.mk>
