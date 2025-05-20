COMMENT=	Xfce4 mpd client panel plugin

XFCE_VERSION=	0.6.0
XFCE_PLUGIN=	mpc

# BSD-ISC
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4 devel/meson

CONFIGURE_ARGS=	-Dlibmpd=disabled

WANTLIB += gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3 xfce4ui-2
WANTLIB += xfce4util

.include <bsd.port.mk>
