# $OpenBSD: Makefile,v 1.5 2018/04/27 12:08:28 robert Exp $

COMMENT=		MATE keyboard configuration library

MATE_PROJECT=		libmatekbd
MATE_VERSION=		1.20.1

SHARED_LIBS +=  matekbd                   6.0 # 6.0
SHARED_LIBS +=  matekbdui                 6.0 # 6.0

CATEGORIES=		devel

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender epoxy expat ffi fontconfig freetype
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 iconv intl
WANTLIB += m pcre pixman-1 pthread xcb xcb-render xcb-shm fribidi
WANTLIB += xkbfile z harfbuzz gtk-3 atk-1.0 atk-bridge-2.0 atspi cairo
WANTLIB += cairo-gobject dbus-1 gdk-3 gdk_pixbuf-2.0 graphite2 lzma
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 png xml2 xkbfile xklavier

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		x11/gnome/libxklavier \
			x11/gtk+3

MODGNOME_TOOLS=		gobject-introspection

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
