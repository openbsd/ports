# $OpenBSD: Makefile,v 1.39 2019/08/15 07:08:32 landry Exp $

COMMENT=	Xfce4 mailboxes monitor panel plugin

XFCE_VERSION=	1.2.0
XFCE_PLUGIN=	mailwatch
REVISION=	9

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 cairo exo-1 expat ffi fribidi
WANTLIB += fontconfig freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0 gpg-error
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz hogweed iconv idn2
WANTLIB += intl m nettle p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread startup-notification-1 tasn1
WANTLIB += unistring xcb xcb-render xcb-shm xcb-util xfce4ui-1 xfce4util
WANTLIB += z

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE=	Yes
MODXFCE_WANTLIB=	xfce4panel-1.0

LIB_DEPENDS+=	security/gnutls
LIB_DEPENDS+=	security/libgcrypt

.include <bsd.port.mk>
