# $OpenBSD: Makefile,v 1.13 2014/04/14 19:52:45 matthieu Exp $

COMMENT =	Xfce4 quicklauncher panel plugin

XFCE_VERSION =	1.9.4
XFCE_PLUGIN =	quicklauncher
REVISION =	9

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	x11/xfce4
LIB_DEPENDS =	x11/xfce4/libxfcegui4

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 cairo drm expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs startup-notification-1
WANTLIB += xcb xcb-util xcb-render xcb-shm xfce4util xfcegui4 z stdc++
WANTLIB += harfbuzz pthread

post-configure:
	${SUBST_CMD} ${WRKSRC}/panel-plugin/callbacks.c

# needed to correctly find bindtextdomain
CONFIGURE_ENV +=	LIBS="-liconv"

.include <bsd.port.mk>
