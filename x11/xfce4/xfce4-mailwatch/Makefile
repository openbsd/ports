COMMENT=	Xfce4 mailboxes monitor panel plugin

XFCE_VERSION=	1.4.0
XFCE_PLUGIN=	mailwatch

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4 devel/meson

MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS+=	security/gnutls

WANTLIB += cairo cairo-gobject exo-2 gdk-3 gdk_pixbuf-2.0 glib-2.0
WANTLIB += gnutls gobject-2.0 gtk-3 intl xfce4ui-2 xfce4util

.include <bsd.port.mk>
