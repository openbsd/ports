# $OpenBSD: Makefile,v 1.7 2011/01/18 20:52:20 landry Exp $

COMMENT =	Thunar archive plugin

XFCE_VERSION =	0.2.4
THUNAR_PLUGIN =	thunar-archive-plugin
REVISION =	3

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	x11/xfce4

BUILD_DEPENDS +=${RUN_DEPENDS}
RUN_DEPENDS =	x11/xfce4/thunar \
		xarchiver-*|file-roller-*|kdeutils-*:x11/xarchiver

LIB_DEPENDS +=	x11/xfce4/exo

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += cairo drm exo-1 expat fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs xcb xcb-render
WANTLIB += xcb-shm xfce4util z

.include <bsd.port.mk>
