# $OpenBSD: Makefile,v 1.3 2007/12/19 12:58:20 landry Exp $

COMMENT=	notification daemon for Xfce4 desktop
DISTNAME=	notification-daemon-xfce-0.3.7
PKGNAME=	${DISTNAME}p0

HOMEPAGE=	http://goodies.xfce.org/projects/applications/notification-daemon-xfce
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://goodies.xfce.org/releases/notification-daemon-xfce/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes

LIB_DEPENDS=	xfcegui4.>=4::x11/xfce4/libxfcegui4 \
		xfce4mcs-client.>=3.5,xfce4mcs-manager.>=3.5::x11/xfce4/libxfce4mcs \
		sexy::x11/libsexy \
		notify.>=2.2::devel/libnotify

RUN_DEPENDS=	::x11/xfce4/xfce-mcs-manager \
		::devel/desktop-file-utils \
		::x11/hicolor-icon-theme

BUILD_DEPENDS=	::x11/xfce4/xfce-mcs-manager \
		::textproc/p5-XML-Parser

WANTLIB=	ICE SM X11 Xext Xrender c fontconfig freetype m z \
		Xcursor Xau Xdmcp Xfixes Xi Xinerama Xrandr expat \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 \
		pangoft2-1.0 pangocairo-1.0 cairo glitz png \
		startup-notification-1 xml2 dbus-1 dbus-glib-1 \
		Xcomposite Xdamage pcre xfce4util pthread

.include <bsd.port.mk>
