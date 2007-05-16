# $OpenBSD: Makefile,v 1.4 2007/05/16 14:22:40 steven Exp $

COMMENT=	"volume mixer module for xfce4-panel"

V=		4.4.1
DISTNAME=	xfce4-mixer-${V}
SHARED_LIBS=	xfce4mixer 1.0

HOMEPAGE=	http://www.xfce.org/projects/xfce4-mixer/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes

LIB_DEPENDS=	xfcegui4.>=4.0::x11/xfce4/libxfcegui4 \
		xfce4mcs-client.>=3.5::x11/xfce4/libxfce4mcs \
		xml2.>=9::textproc/libxml \
		xfce4panel.>=2.2::x11/xfce4/xfce4-panel
RUN_DEPENDS=	:xfce-mcs-manager->=4.4.1:x11/xfce4/xfce-mcs-manager
WANTLIB=	ICE Xrender Xau Xdmcp expat SM freetype fontconfig X11 \
		Xcursor Xext Xfixes Xi Xinerama Xrandr c m z \
		gmodule-2.0 glib-2.0 pangocairo-1.0 pango-1.0 \
		gdk_pixbuf-2.0 gtk-x11-2.0 gdk-x11-2.0 pangoft2-1.0 \
		cairo startup-notification-1 glitz atk-1.0 png \
		gobject-2.0 xfce4util.>=1 ossaudio

CONFIGURE_ARGS=	--with-sound=oss \
		--enable-mighty-mouse \
		${CONFIGURE_SHARED}

.include <bsd.port.mk>
