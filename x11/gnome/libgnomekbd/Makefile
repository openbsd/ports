# $OpenBSD: Makefile,v 1.64 2021/12/19 13:20:34 ajacoutot Exp $

COMMENT=		keyboard configuration library

GNOME_PROJECT=		libgnomekbd
GNOME_VERSION=		3.26.1
REVISION=		1

SHARED_LIBS +=  gnomekbd             8.0      # 8.0
SHARED_LIBS +=  gnomekbdui           8.0      # 8.0

CATEGORIES=		devel

# LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 c cairo cairo-gobject epoxy execinfo
WANTLIB += expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gtk-3 harfbuzz iconv intl jpeg lzma m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png xcb xcb-render xcb-shm
WANTLIB += xkbfile xklavier xml2 z

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection
MODGNOME_CPPFLAGS=	-I${X11BASE}/include

LIB_DEPENDS=		x11/gnome/libxklavier \
			x11/gtk+3

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
