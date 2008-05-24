# $OpenBSD: Makefile,v 1.9 2008/05/24 01:24:31 fgsch Exp $

COMMENT=	volume mixer module for xfce4-panel

V=		4.4.2
DISTNAME=	xfce4-mixer-${V}
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	xfce4mixer 1.0

HOMEPAGE=	http://www.xfce.org/projects/xfce4-mixer
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes

LIB_DEPENDS=	xfcegui4.>=4::x11/xfce4/libxfcegui4 \
		xfce4mcs-client.>=3::x11/xfce4/libxfce4mcs \
		xml2.>=9::textproc/libxml \
		xfce4panel.>=2::x11/xfce4/xfce4-panel
RUN_DEPENDS=	::devel/desktop-file-utils \
		::x11/xfce4/xfce-mcs-manager

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m ossaudio \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png startup-notification-1 xfce4util z

CONFIGURE_ARGS=	--with-sound=oss \
		--enable-mighty-mouse \
		${CONFIGURE_SHARED}

.include <bsd.port.mk>
