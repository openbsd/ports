# $OpenBSD: Makefile,v 1.3 2019/07/12 20:51:20 sthen Exp $

COMMENT =	Qt5 style plugins

GH_ACCOUNT =	qt
GH_PROJECT =	qtstyleplugins
GH_COMMIT =	335dbece103e2cbf6c7cf819ab6672c2956b17b3
DISTNAME =	qtstyleplugins-5.0.0.20170311
REVISION =	0

CATEGORIES =	x11

# GPLv3+, LGPLv2+
PERMIT_PACKAGE=	Yes

MODULES =	devel/qmake x11/qt5
LIB_DEPENDS +=	x11/gtk+2

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 z fribidi

.include <bsd.port.mk>
