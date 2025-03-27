COMMENT=	Xfce4 lightweight image-viewer

XFCE_VERSION=	0.13.4
XFCE_GOODIE=	ristretto

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4 devel/meson
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
RUN_DEPENDS=	misc/shared-mime-info

LIB_DEPENDS=	devel/libmagic \
		graphics/libexif \
		x11/xfce4/exo \
		x11/xfce4/libxfce4ui \
		x11/xfce4/xfconf>=4.12.1

WANTLIB += X11 c cairo exif exo-2 gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-3 intl m magic pango-1.0 pangocairo-1.0
WANTLIB += xfce4ui-2 xfce4util xfconf-0

.include <bsd.port.mk>
