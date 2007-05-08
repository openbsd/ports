# $OpenBSD: Makefile,v 1.11 2007/05/08 08:28:39 steven Exp $

COMMENT=	"widget library for xfce4"
V=		4.4.1
DISTNAME=	libxfcegui4-${V}
SHARED_LIBS +=  xfcegui4             4.0      # .6.5

HOMEPAGE=	http://www.xfce.org/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext

LIB_DEPENDS=	xfce4util.>=1.10::x11/xfce4/libxfce4util \
		startup-notification-1::devel/startup-notification \
		gdk-x11-2.0.>=1000,gdk_pixbuf-2.0.>=1000,gtk-x11-2.0.>=1000::x11/gtk+2

WANTLIB=	ICE SM X11 Xrender Xau Xdmcp fontconfig freetype m z png \
		Xcursor Xext Xfixes Xi Xinerama Xrandr expat cairo glitz \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 gmodule-2.0 gobject-2.0 \
		glib-2.0 atk-1.0

CONFIGURE_ARGS+=--disable-gtk-doc

.include <bsd.port.mk>
