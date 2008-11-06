# $OpenBSD: Makefile,v 1.22 2008/11/06 15:34:46 landry Exp $

COMMENT=	widget library for xfce4

XFCE_PROJECT=	libxfcegui4
SHARED_LIBS=	xfcegui4	4.0	# .6.6

HOMEPAGE=	http://www.xfce.org/projects/libraries

# LGPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

LIB_DEPENDS=	xfce4util.>=1::x11/xfce4/libxfce4util \
		startup-notification-1::devel/startup-notification \
		gdk-x11-2.0.>=1200,gdk_pixbuf-2.0.>=1200,gtk-x11-2.0.>=1200::x11/gtk+2

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo expat \
		fontconfig freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png z

CONFIGURE_ARGS+=--disable-gtk-doc

.include <bsd.port.mk>
