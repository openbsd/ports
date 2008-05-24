# $OpenBSD: Makefile,v 1.18 2008/05/24 01:24:31 fgsch Exp $

COMMENT=	widget library for xfce4
V=		4.4.2
DISTNAME=	libxfcegui4-${V}
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	xfcegui4	4.0	# .6.6

HOMEPAGE=	http://www.xfce.org/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	xfce4util.>=1::x11/xfce4/libxfce4util \
		startup-notification-1::devel/startup-notification \
		gdk-x11-2.0.>=1200,gdk_pixbuf-2.0.>=1200,gtk-x11-2.0.>=1200::x11/gtk+2

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo expat \
		fontconfig freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png z

CONFIGURE_ARGS+=--disable-gtk-doc

.include <bsd.port.mk>
