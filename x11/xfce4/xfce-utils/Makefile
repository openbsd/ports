# $OpenBSD: Makefile,v 1.20 2008/05/24 01:24:31 fgsch Exp $

COMMENT=	essential utilities and scripts for xfce4

V=		4.4.2
DISTNAME=	xfce-utils-${V}
PKGNAME=	${DISTNAME}p2

HOMEPAGE=	http://www.xfce.org/projects/xfce-utils/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes

LIB_DEPENDS=	xfcegui4.>=4::x11/xfce4/libxfcegui4 \
		dbus-glib-1::x11/dbus-glib \
		dbus-1.>=6::x11/dbus
RUN_DEPENDS=	::x11/xfce4/xfce-mcs-manager \
		::x11/xfce4/xfce4-session \
		::x11/xfce4/exo
BUILD_DEPENDS=	::x11/xfce4/xfce-mcs-manager

WANTLIB= 	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread \
		startup-notification-1 xfce4util z

CONFIGURE_ARGS+=--with-browser="xterm -e lynx"

.include <bsd.port.mk>
