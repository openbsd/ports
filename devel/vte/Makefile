# $OpenBSD: Makefile,v 1.125 2020/11/01 12:43:46 jasper Exp $

PORTROACH +=		limit:^0\.2

COMMENT =		terminal emulation library

GNOME_PROJECT=		vte
GNOME_VERSION=		0.28.2
REVISION =		20

SHARED_LIBS+=	vte	14.1    # 2609.0

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo curses
WANTLIB += expat ffi fontconfig freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gtk-x11-2.0 harfbuzz iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png xcb xcb-render xcb-shm
WANTLIB += z

MODULES=		lang/python \
			x11/gnome

MODPY_RUNDEP=		No

LIB_DEPENDS=		x11/gtk+2

MODGNOME_TOOLS +=	gobject-introspection

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-gtk=2.0 \
			--disable-python \
			--disable-gnome-pty-helper

# error: -Bsymbolic-functions requested but not supported by ld
CONFIGURE_ARGS +=	--disable-Bsymbolic

.include <bsd.port.mk>
