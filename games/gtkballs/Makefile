# $OpenBSD: Makefile,v 1.44 2019/07/12 21:02:20 sthen Exp $

COMMENT=	gtk+ clone of the lines ball logic game

DISTNAME=	gtkballs-3.1.5
REVISION=	17
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}dist/ \
		${MASTER_SITE_SUNSITE:=games/strategy/}

HOMEPAGE=	http://gtkballs.antex.ru/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =  GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread xcb xcb-render xcb-shm z

LIB_DEPENDS=	x11/gtk+2

NO_TEST=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LOCALSTATEDIR=	${BASELOCALSTATEDIR}/games

FAKE_FLAGS=	localstatedir=${PREFIX}/share/examples/gtkballs

.include <bsd.port.mk>
