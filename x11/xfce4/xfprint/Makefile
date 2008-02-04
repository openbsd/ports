# $OpenBSD: Makefile,v 1.1.1.1 2008/02/04 11:22:58 landry Exp $

COMMENT=	printing helper for xfce4

V=		4.4.2
DISTNAME=	xfprint-${V}

SHARED_LIBS=	xfprint	0.1

HOMEPAGE=	http://www.xfce.org/projects/xfprint/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes

CONFIGURE_ARGS=	--enable-cups \
		--enable-bsdlpr \
		--with-printcap=/etc/printcap

RUN_DEPENDS=	::devel/desktop-file-utils \
		::x11/xfce4/xfce-mcs-manager \
		::print/a2ps

LIB_DEPENDS=	xfcegui4.>=4::x11/xfce4/libxfcegui4 \
		xfce4mcs-client.>=3,xfce4mcs-manager.>=3::x11/xfce4/libxfce4mcs \
		cups.>=3::print/cups

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo crypto \
		expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre png ssl \
		startup-notification-1 xfce4util z

.include <bsd.port.mk>
