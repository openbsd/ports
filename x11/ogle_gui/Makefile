# $OpenBSD: Makefile,v 1.35 2015/08/19 20:34:33 sthen Exp $

CATEGORIES=	x11

COMMENT=	GUI for ogle
DISTNAME=	ogle_gui-0.9.2
REVISION=	11

HOMEPAGE=	http://www.dtek.chalmers.se/groups/dvd/
# Authors can be reached at dvd@dtek.chalmers.se
MASTER_SITES=	${HOMEPAGE}/dist/

CONFIGURE_STYLE=	gnu

# GPL
PERMIT_PACKAGE_CDROM=Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr c expat gio-2.0 pcre pixman-1 pthread
WANTLIB += z pthread-stubs xcb dvdcontrol xml2 msgevents
WANTLIB += gthread-2.0 xcb-render xcb-shm
WANTLIB += Xrender atk-1.0 fontconfig freetype glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 m pango-1.0 glade-2.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 cairo png gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gtk-x11-2.0
WANTLIB += ffi graphite2 harfbuzz lzma

LIB_DEPENDS=	x11/ogle \
		textproc/libxml \

MODULES=	devel/gettext

LIB_DEPENDS+=	devel/libglade2 \
		x11/gtk+2
CONFIGURE_ARGS+=--enable-gtk2
CONFIGURE_ENV+= CFLAGS="-I${LOCALBASE}/include -L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include -L${LOCALBASE}/lib" \
		LDFLAGS="-pthread"

.include <bsd.port.mk>
