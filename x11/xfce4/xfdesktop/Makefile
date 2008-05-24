# $OpenBSD: Makefile,v 1.18 2008/05/24 01:24:31 fgsch Exp $

COMMENT=	xfce4 desktop manager

V=		4.4.2
DISTNAME=	xfdesktop-${V}
PKGNAME=	${DISTNAME}p1

HOMEPAGE=	http://www.xfce.org/projects/xfdesktop/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes

CONFIGURE_ARGS=	--enable-thunarx \
		--enable-exo

LIB_DEPENDS=	xfcegui4.>=4::x11/xfce4/libxfcegui4 \
		xfce4mcs-client.>=3::x11/xfce4/libxfce4mcs \
		thunar-vfs-1.>=4,thunarx-1.>=4::x11/xfce4/thunar \

RUN_DEPENDS=	::devel/desktop-file-utils \
		::x11/xfce4/xfce-mcs-manager

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 \
		dbus-glib-1 exo-0.3 expat fam fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread rpcsvc \
		startup-notification-1 stdc++ xfce4panel xfce4util z

.include <bsd.port.mk>
