# $OpenBSD: Makefile,v 1.12 2007/05/08 16:10:48 steven Exp $

COMMENT=	"xfce4 desktop manager"

V=		4.4.1
DISTNAME=	xfdesktop-${V}

HOMEPAGE=	http://www.xfce.org/projects/xfdesktop/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes

MODULES=	devel/gettext

CONFIGURE_ARGS=	--enable-thunarx \
		--enable-exo

LIB_DEPENDS=	xfcegui4.>=4.0::x11/xfce4/libxfcegui4 \
		xfce4mcs-client.>=3.5::x11/xfce4/libxfce4mcs \
		thunar-vfs-1.>=4.2,thunarx-1.>=4.2::x11/xfce4/thunar \

RUN_DEPENDS=	:xfce-mcs-manager->=4.4.1:x11/xfce4/xfce-mcs-manager

WANTLIB=	ICE SM X11 Xau Xdmcp Xrender c fontconfig \
		Xcursor Xext Xfixes Xi Xinerama Xrandr \
		gthread-2.0 freetype m z pthread jpeg expat \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 \
		pangoft2-1.0 pangocairo-1.0 cairo glitz png \
		startup-notification-1 xfce4util.>=1 \
		exo-0.3 xfce4panel dbus-1 dbus-glib-1

.include <bsd.port.mk>
