# $OpenBSD: Makefile,v 1.7 2007/12/18 20:59:28 landry Exp $

COMMENT=	advanced calendar for xfce4

V=		4.5.9.6
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
		notify.>=2::devel/libnotify \
		dbus-glib-1::x11/dbus-glib \
		dbus-1.>=6::x11/dbus
RUN_DEPENDS=	::devel/desktop-file-utils

WANTLIB= ICE SM X11 Xau Xdmcp Xrender Xcomposite c expat fontconfig freetype \
		Xcursor Xext Xfixes Xi Xinerama Xdamage Xrandr pthread m z \
		atk-1.0 cairo gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre png startup-notification-1 xfce4util

.include <bsd.port.mk>
