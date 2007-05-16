# $OpenBSD: Makefile,v 1.3 2007/05/16 14:22:40 steven Exp $

COMMENT=	"advanced calendar for xfce4"

V=		4.5.9.3
DISTNAME=	orage-${V}
PKGNAME=	${DISTNAME}p0

HOMEPAGE=	http://www.xfce.org/projects/orage/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://www.kolumbus.fi/~w408237/orage/
EXTRACT_SUFX=	.tar.bz2

WRKSRC=		${WRKDIST}-svn

USE_GMAKE=	Yes

LIB_DEPENDS=	xfcegui4.>=4.0::x11/xfce4/libxfcegui4 \
		xfce4panel.>=2.2::x11/xfce4/xfce4-panel \
		dbus-glib-1::x11/dbus-glib \
		dbus-1.>=6::x11/dbus

WANTLIB= ICE SM X11 Xau Xdmcp Xrender c expat fontconfig freetype \
		Xcursor Xext Xfixes Xi Xinerama Xrandr pthread m z \
		atk-1.0 cairo gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png startup-notification-1 xfce4util

.include <bsd.port.mk>
