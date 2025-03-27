COMMENT=	Xfce4 simple text editor

XFCE_VERSION=	0.6.4
XFCE_GOODIE=	mousepad

SHARED_LIBS +=	mousepad	1.0 # 0.0

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4 devel/meson
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS=	textproc/gspell \
		x11/xfce4/libxfce4ui \
		x11/gtksourceview4

# share/polkit-1/actions/org.xfce.mousepad.policy
BUILD_DEPENDS +=	sysutils/polkit

WANTLIB += c gdk-3 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gspell-1
WANTLIB += gtk-3 gtksourceview-4 intl m pango-1.0 xfce4kbd-private-3

.include <bsd.port.mk>
