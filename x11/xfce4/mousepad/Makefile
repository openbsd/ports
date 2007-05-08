# $OpenBSD: Makefile,v 1.1.1.1 2007/05/08 08:33:12 steven Exp $

COMMENT=	"really simple text editor for xfce4"

V=		0.2.12
DISTNAME=	mousepad-${V}

HOMEPAGE=	http://www.xfce.org/projects/mousepad/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://www.xfce.org/archive/xfce-4.4.1/src/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes

MODULES=	devel/gettext

BUILD_DEPENDS=	::textproc/p5-XML-Parser
LIB_DEPENDS=	xfcegui4.>=4.0::x11/xfce4/libxfcegui4

WANTLIB= ICE SM X11 Xau Xdmcp Xrender atk-1.0 c cairo expat z \
		Xcursor Xext Xfixes Xi Xinerama Xrandr png xfce4util \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 startup-notification-1

.include <bsd.port.mk>
