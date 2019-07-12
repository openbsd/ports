# $OpenBSD: Makefile,v 1.39 2019/07/12 21:02:29 sthen Exp $

CATEGORIES=	x11

COMMENT=	GUI for ogle
DISTNAME=	ogle_gui-0.9.2
REVISION=	14

HOMEPAGE=	http://www.dtek.chalmers.se/groups/dvd/
# Authors can be reached at dvd@dtek.chalmers.se
MASTER_SITES=	${HOMEPAGE}/dist/

CONFIGURE_STYLE=	gnu

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo dvdcontrol expat ffi fontconfig
WANTLIB += freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz iconv intl lzma m msgevents pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread xcb
WANTLIB += xcb-render xcb-shm xml2 z

LIB_DEPENDS=	x11/ogle \
		textproc/libxml \

LIB_DEPENDS+=	devel/libglade2 \
		x11/gtk+2
CONFIGURE_ARGS+=--enable-gtk2
CONFIGURE_ENV+= CFLAGS="-I${LOCALBASE}/include -L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include -L${LOCALBASE}/lib" \
		LDFLAGS="-pthread"

.include <bsd.port.mk>
