# $OpenBSD: Makefile,v 1.18 2020/08/20 06:40:19 robert Exp $

COMMENT=		MATE terminal

MATE_PROJECT=		mate-terminal
MATE_VERSION=		1.24.1

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 c cairo cairo-gobject
WANTLIB += dconf epoxy expat ffi fontconfig freetype fribidi gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz hogweed
WANTLIB += iconv idn2 intl m nettle p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pcre2-8 pixman-1 png pthread tasn1
WANTLIB += unistring vte-2.91 xcb xcb-render xcb-shm z
WANTLIB += ${COMPILER_LIBCXX}

MODULES=		devel/dconf \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas
RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			x11/mate/desktop

LIB_DEPENDS=		devel/vte3

MODGNOME_TOOLS=		desktop-file-utils yelp

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
