# $OpenBSD: Makefile,v 1.4 2007/09/06 18:44:52 steven Exp $

COMMENT=	"lightweight vte-based terminal for xfce4"

V=		0.2.6
DISTNAME=	Terminal-${V}
PKGNAME=	terminal-${V}p1

HOMEPAGE=	http://www.xfce.org/projects/terminal/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://www.xfce.org/archive/xfce-4.4.1/src/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes

LIB_DEPENDS=	exo-0.3.>=4::x11/xfce4/exo \
		dbus-glib-1::x11/dbus-glib \
		dbus-1.>=6::x11/dbus \
		vte.>=8.0::devel/vte

WANTLIB=	X11 atk-1.0 c gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 gobject-2.0 \
		gtk-x11-2.0 startup-notification-1 xfce4util

.include <bsd.port.mk>
