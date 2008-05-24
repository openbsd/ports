# $OpenBSD: Makefile,v 1.7 2008/05/24 01:24:31 fgsch Exp $

COMMENT=	extension library for xfce4

V=		0.3.4
DISTNAME=	exo-${V}
PKGNAME=	${DISTNAME}p1

SHARED_LIBS=	exo-0.3		5.0 \
		exo-hal-0.3	5.0

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
LIB_DEPENDS=	xfce4mcs-client.>=3,xfce4mcs-manager.>=3::x11/xfce4/xfce-mcs-manager \
		notify.>=2::devel/libnotify \
		xfcegui4.>=4::x11/xfce4/libxfcegui4
RUN_DEPENDS=	::devel/desktop-file-utils

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png pthread startup-notification-1 xfce4util z

.include <bsd.port.mk>

