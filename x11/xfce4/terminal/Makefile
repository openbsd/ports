# $OpenBSD: Makefile,v 1.70 2021/12/14 16:13:10 landry Exp $

COMMENT=	Xfce4 vte-based terminal

XFCE_VERSION=	0.9.1
XFCE_GOODIE=	xfce4-terminal
DEBUG_PACKAGES=	${BUILD_PACKAGES}

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS=	x11/xfce4/libxfce4ui \
		x11/xfce4/xfconf \
		devel/vte3

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 X11-xcb Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 c cairo cairo-gobject epoxy expat ffi
WANTLIB += fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz hogweed iconv icudata icuuc
WANTLIB += idn2 intl m nettle p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pcre2-8 pixman-1 png startup-notification-1
WANTLIB += tasn1 unistring vte-2.91 xcb xcb-render xcb-shm xcb-util
WANTLIB += xfce4kbd-private-3 xfce4ui-2 xfce4util xfconf-0 z execinfo jpeg

.include <bsd.port.mk>
