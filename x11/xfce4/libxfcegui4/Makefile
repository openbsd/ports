# $OpenBSD: Makefile,v 1.32 2011/01/18 20:16:18 landry Exp $

COMMENT=	Xfce4 widget library

XFCE_PROJECT=	libxfcegui4

SHARED_LIBS=	xfcegui4	5.0

HOMEPAGE=	http://www.xfce.org/projects/libraries

# LGPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

CONFIGURE_ARGS+=	--disable-linker-opts
LIB_DEPENDS=	x11/xfce4/libxfce4util>=4.8.0 \
		devel/startup-notification \
		devel/libglade2

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo \
		expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glib-2.0 gmodule-2.0 gobject-2.0  gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png xfce4util xml2 z \
		pthread-stubs xcb execinfo xcb-atom xcb-aux xcb-event glade-2.0 \
		gthread-2.0 xcb-render startup-notification-1 GL Xxf86vm drm xcb-shm

FAKE_FLAGS=	settingsdir=${PREFIX}/share/examples/xfconf

.include <bsd.port.mk>
