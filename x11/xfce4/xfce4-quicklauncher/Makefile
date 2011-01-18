# $OpenBSD: Makefile,v 1.7 2011/01/18 21:34:58 ajacoutot Exp $

COMMENT =	Xfce4 quicklauncher panel plugin

XFCE_VERSION =	1.9.4
XFCE_PLUGIN =	quicklauncher
REVISION =	4

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES =	x11/xfce4
LIB_DEPENDS =	x11/xfce4/libxfcegui4

WANTLIB =	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 pthread-stubs xcb \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png xfce4util xfcegui4 z \
		pcre startup-notification-1 execinfo xcb-atom xcb-aux xcb-event \
		gthread-2.0 xcb-render GL Xxf86vm drm xcb-shm

post-configure:
	${SUBST_CMD} ${WRKSRC}/panel-plugin/callbacks.c

# needed to correctly find bindtextdomain
CONFIGURE_ENV +=	LIBS="-liconv"

.include <bsd.port.mk>
