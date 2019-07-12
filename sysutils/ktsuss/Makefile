# $OpenBSD: Makefile,v 1.14 2019/07/12 20:49:44 sthen Exp $

COMMENT =	graphical su wrapper
DISTNAME =	ktsuss-1.4
REVISION =	6
CATEGORIES =	sysutils

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread xcb z

HOMEPAGE =	http://developer.berlios.de/projects/ktsuss
MASTER_SITES =	https://spacehopper.org/mirrors/berlios/ktsuss/

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS="-pthread"
CFLAGS +=		-pthread

LIB_DEPENDS =	x11/gtk+2,-main


.include <bsd.port.mk>
