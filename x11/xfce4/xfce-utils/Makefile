# $OpenBSD: Makefile,v 1.12 2007/05/10 13:40:30 steven Exp $

COMMENT=	"essential utilities and scripts for xfce4"

V=		4.4.1
DISTNAME=	xfce-utils-${V}
PKGNAME=	${DISTNAME}p0

HOMEPAGE=	http://www.xfce.org/projects/xfce-utils/
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
LIB_DEPENDS=	xfcegui4.>=4::x11/xfce4/libxfcegui4 \
		dbus-glib-1::x11/dbus-glib \
		dbus-1.>=6::x11/dbus
RUN_DEPENDS=	:xfce-mcs-manager-*:x11/xfce4/xfce-mcs-manager \
		:xfce4-session->=4.4.1:x11/xfce4/xfce4-session \
		::x11/xfce4/exo
WANTLIB=	ICE SM X11 Xau Xdmcp Xrender c fontconfig freetype m \
		Xcursor Xext Xfixes Xi Xinerama Xrandr pthread expat \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 \
		pangoft2-1.0 pangocairo-1.0 cairo glitz png z \
		startup-notification-1 xfce4util.>=1

CONFIGURE_ARGS+=--with-browser="xterm -e lynx"

.include <bsd.port.mk>
