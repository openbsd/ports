# $OpenBSD: Makefile,v 1.1.1.1 2013/09/17 11:21:50 sthen Exp $

COMMENT=	small utilities for X11 system tray: eject, battery, mixer

DISTNAME=	tray-app-0.3

CATEGORIES=	sysutils x11

HOMEPAGE=	http://www.bsdua.org/tray-app.html

# Public domain
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 m notify pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += z

MASTER_SITES=	http://www.bsdua.org/files/

LIB_DEPENDS=	devel/libnotify \
		x11/gtk+2
MODULES=	devel/gettext

MAKE_FLAGS=	CC="${CC}"

NO_TEST=	Yes

do-configure:
	${SUBST_CMD} ${WRKSRC}/*/Makefile

.include <bsd.port.mk>
