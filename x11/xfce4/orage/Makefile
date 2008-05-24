# $OpenBSD: Makefile,v 1.10 2008/05/24 01:24:31 fgsch Exp $

COMMENT=	advanced calendar for xfce4

V=		4.5.12.2
DISTNAME=	orage-${V}
PKGNAME=	${DISTNAME}p1

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
		notify.>=2::devel/libnotify \
		dbus-glib-1::x11/dbus-glib \
		dbus-1.>=6::x11/dbus
RUN_DEPENDS=	::devel/desktop-file-utils

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread \
		startup-notification-1 xfce4util z

.include <bsd.port.mk>
