# $OpenBSD: Makefile,v 1.35 2017/10/23 17:11:06 sthen Exp $

COMMENT=	Xfce4 mailboxes monitor panel plugin

XFCE_VERSION=	1.2.0
XFCE_PLUGIN=	mailwatch
REVISION=	6

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 cairo exo-1 expat ffi
WANTLIB += fontconfig freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0 gpg-error
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz hogweed iconv idn2
WANTLIB += intl m nettle p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread
WANTLIB += startup-notification-1 tasn1 unistring xcb xcb-render xcb-shm
WANTLIB += xcb-util xfce4ui-1 xfce4util z

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS+=	security/gnutls
LIB_DEPENDS+=	security/libgcrypt

.include <bsd.port.mk>
