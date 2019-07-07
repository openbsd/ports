# $OpenBSD: Makefile,v 1.63 2019/07/07 11:20:53 ajacoutot Exp $

COMMENT=		keyboard configuration library

GNOME_PROJECT=		libgnomekbd
GNOME_VERSION=		3.26.1
REVISION=		0

SHARED_LIBS +=  gnomekbd             8.0      # 8.0
SHARED_LIBS +=  gnomekbdui           8.0      # 8.0

CATEGORIES=		devel

# LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 atk-bridge-2.0 c cairo cairo-gobject epoxy
WANTLIB += expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv intl lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread xcb
WANTLIB += xcb-render xcb-shm xkbfile xklavier xml2 z

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection
MODGNOME_CPPFLAGS=	-I${X11BASE}/include

LIB_DEPENDS=		x11/gnome/libxklavier \
			x11/gtk+3

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
