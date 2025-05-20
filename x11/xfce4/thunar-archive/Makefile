COMMENT =	Thunar archive plugin

XFCE_VERSION =	0.6.0
THUNAR_PLUGIN =	thunar-archive-plugin

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =	x11/xfce4 devel/meson

MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS =	x11/xfce4/thunar

RUN_DEPENDS =	xarchiver-*|file-roller-*|ark-*|engrampa-*:x11/xarchiver

WANTLIB += gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl thunarx-3

.include <bsd.port.mk>
