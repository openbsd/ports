COMMENT=	Xfce4 sticky notes panel plugin

XFCE_VERSION=	1.12.0
XFCE_PLUGIN=	notes

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4 devel/meson
LIB_DEPENDS +=	x11/gtksourceview4
BUILD_DEPENDS+=	lang/vala
MODXFCE_DESKTOP_FILE =	Yes
MODXFCE_ICON_CACHE=	Yes

WANTLIB += c cairo gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3 gtksourceview-4
WANTLIB += pango-1.0 xfce4ui-2 xfce4util xfconf-0

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xfce4-notes
	mv ${WRKINST}/etc/xdg/autostart/*.desktop \
		${PREFIX}/share/examples/xfce4-notes
	rmdir ${WRKINST}/etc/xdg/{autostart,}

.include <bsd.port.mk>
