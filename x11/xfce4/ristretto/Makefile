# $OpenBSD: Makefile,v 1.46 2019/08/15 06:55:21 landry Exp $

COMMENT=	Xfce4 lightweight image-viewer

XFCE_VERSION=	0.10.0
XFCE_GOODIE=	ristretto

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes
RUN_DEPENDS=	misc/shared-mime-info

# https://git.xfce.org/apps/ristretto/commit/?id=13600d6f78a7178ed9c1f07697751cb37195920b
MAKE_ENV += AM_LDFLAGS=-L${X11BASE}/lib

LIB_DEPENDS=	devel/libmagic \
		graphics/libexif \
		x11/xfce4/libxfce4ui \
		x11/xfce4/xfconf>=4.12.1

WANTLIB += ICE SM X11 atk-1.0 c cairo cairo-gobject exif gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 intl m magic pango-1.0 pangocairo-1.0 pthread
WANTLIB += xfce4ui-2 xfce4util xfconf-0

.include <bsd.port.mk>
