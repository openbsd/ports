# $OpenBSD: Makefile,v 1.39 2014/01/01 20:46:28 naddy Exp $

COMMENT=	gtk+ clone of the lines ball logic game

DISTNAME=	gtkballs-3.1.5
REVISION=	13
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}dist/ \
		${MASTER_SITE_SUNSITE:=games/strategy/}

HOMEPAGE=	http://gtkballs.antex.ru/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += z

MODULES=	devel/gettext

LIB_DEPENDS=	x11/gtk+2

NO_TEST=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LOCALSTATEDIR=	${BASELOCALSTATEDIR}/games

FAKE_FLAGS=	localstatedir=${PREFIX}/share/examples/gtkballs

.include <bsd.port.mk>
