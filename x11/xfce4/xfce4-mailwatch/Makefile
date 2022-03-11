COMMENT=	Xfce4 mailboxes monitor panel plugin

XFCE_VERSION=	1.3.0
XFCE_PLUGIN=	mailwatch

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 X11-xcb Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 cairo cairo-gobject epoxy exo-2 expat
WANTLIB += ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz hogweed
WANTLIB += iconv idn2 intl m nettle p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png startup-notification-1
WANTLIB += tasn1 unistring xcb xcb-render xcb-shm xcb-util xfce4ui-2
WANTLIB += xfce4util z

LIB_DEPENDS+=	security/gnutls

.include <bsd.port.mk>
