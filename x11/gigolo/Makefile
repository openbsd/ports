COMMENT =	GVfs mountpoint manager

XFCE_VERSION =	0.6.0
XFCE_GOODIE =	gigolo

CATEGORIES =	x11

MAINTAINER =	Landry Breuil <landry@openbsd.org>

HOMEPAGE =	https://www.uvena.de/gigolo/

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =	x11/xfce4 devel/meson
MODXFCE_DESKTOP_FILE =	Yes
MODXFCE_ICON_CACHE=	Yes
RUN_DEPENDS +=	x11/gnome/gvfs
LIB_DEPENDS =	x11/gtk+3

WANTLIB += c gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl

.include <bsd.port.mk>
