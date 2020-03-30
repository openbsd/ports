# $OpenBSD: Makefile,v 1.68 2020/03/30 07:55:56 landry Exp $

COMMENT=	Xfce4 vte-based terminal

XFCE_VERSION=	0.8.9.2
XFCE_GOODIE=	xfce4-terminal
DEBUG_PACKAGES=	${BUILD_PACKAGES}

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes

LIB_DEPENDS=	x11/xfce4/libxfce4ui \
		x11/xfce4/xfconf \
		devel/vte3

WANTLIB=	X11 X11-xcb atk-1.0 c gdk_pixbuf-2.0 gio-2.0 \
		ICE SM Xcomposite Xcursor Xdamage Xext Xfixes \
		Xi Xinerama Xrandr Xrender cairo expat fontconfig freetype fribidi \
		gmodule-2.0 gthread-2.0 m pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread \
		xcb xcb-render xcb-shm z xcb-util pcre2-8 iconv intl \
		glib-2.0 gobject-2.0 pango-1.0 xfce4util ffi graphite2 \
		harfbuzz startup-notification-1 xfce4ui-2 unistring \
		atk-bridge-2.0 cairo-gobject epoxy gdk-3 \
		gmp gnutls gtk-3 hogweed idn2 nettle p11-kit tasn1 vte-2.91 xfconf-0 ${COMPILER_LIBCXX}

.include <bsd.port.mk>
