COMMENT=	Xfce4 command line panel plugin

XFCE_VERSION=	2.1.0
XFCE_PLUGIN=	verve

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4 devel/meson

LIB_DEPENDS=	devel/pcre2

WANTLIB += gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3 pcre2-8 xfce4ui-2
WANTLIB += xfce4util

.include <bsd.port.mk>
