# $OpenBSD: Makefile,v 1.9 2020/03/16 14:50:57 ratchov Exp $

ONLY_FOR_ARCHS=	${APM_ARCHS}

COMMENT=	small utilities for X11 system tray: eject, battery, mixer

DISTNAME=	tray-app-0.3.1
REVISION=	1

CATEGORIES=	sysutils x11

HOMEPAGE=	http://www.bsdua.org/tray-app.html

# Public domain
PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 iconv
WANTLIB += intl m notify pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z

MASTER_SITES=	http://www.bsdua.org/files/

LIB_DEPENDS=	devel/libnotify \
		x11/gtk+2
MAKE_FLAGS=	CC="${CC}"

NO_TEST=	Yes

do-configure:
	${SUBST_CMD} ${WRKSRC}/*/Makefile

.include <bsd.port.mk>
