# $OpenBSD: Makefile,v 1.10 2013/03/11 11:46:18 espie Exp $

COMMENT =	Xfce4 ppp connection monitor panel plugin

XFCE_VERSION =	0.1.3.99
XFCE_PLUGIN =	modemlights
REVISION =	6

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	x11/xfce4
LIB_DEPENDS =	x11/xfce4/libxfcegui4

pre-configure:
	${SUBST_CMD} ${WRKSRC}/panel-plugin/panel-plugin.c

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs xcb
WANTLIB += xcb-render xcb-shm xfce4util xfcegui4 z

.include <bsd.port.mk>
