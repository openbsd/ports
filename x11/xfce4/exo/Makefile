# $OpenBSD: Makefile,v 1.3 2007/05/28 19:53:06 steven Exp $

COMMENT=	"extension library for xfce4"

V=		0.3.2
DISTNAME=	exo-${V}
PKGNAME=	${DISTNAME}p0

SHARED_LIBS +=  exo-0.3              4.0      # .4.0
SHARED_LIBS +=  exo-hal-0.3          4.0      # .4.0

HOMEPAGE=	http://www.xfce.org/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://thunar.xfce.org/download/sources/exo/${V}/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes

CONFIGURE_ARGS=	--enable-mcs-plugin --disable-python

BUILD_DEPENDS=	:p5-URI-*:www/p5-URI
LIB_DEPENDS=	xfce4mcs-client.>=3.5,xfce4mcs-manager.>=3.5::x11/xfce4/xfce-mcs-manager \
		xfcegui4.>=4::x11/xfce4/libxfcegui4

WANTLIB = ICE SM X11 Xau Xdmcp Xrender atk-1.0 c m z cairo expat \
		Xcursor Xext Xfixes Xi Xinerama Xrandr \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 png \
		startup-notification-1 xfce4util

.include <bsd.port.mk>

