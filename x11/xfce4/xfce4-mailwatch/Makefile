# $OpenBSD: Makefile,v 1.3 2007/10/26 13:08:10 landry Exp $

COMMENT=	monitor various types of mailboxes

V=		1.0.1
DISTNAME=	xfce4-mailwatch-plugin-${V}
PKGNAME=	xfce4-mailwatch-${V}p0

HOMEPAGE=	http://spuriousinterrupt.org/projects/mailwatch
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://spuriousinterrupt.org/files/mailwatch/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes
LIB_DEPENDS=	xfce4panel.>=2.2::x11/xfce4/xfce4-panel \
		xfcegui4.>=4::x11/xfce4/libxfcegui4 \

RUN_DEPENDS=	:xfce4-panel->=4.4.1:x11/xfce4/xfce4-panel

WANTLIB=	ICE SM X11 Xdmcp Xrender Xau Xdamage fontconfig freetype \
		Xcursor Xext Xfixes Xi Xcomposite Xinerama Xrandr expat \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 pcre m z c\
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 pthread \
		pangoft2-1.0 pangocairo-1.0 cairo glitz png \
		gthread-2.0 startup-notification-1 xfce4util.>=1

CONFIGURE_ARGS=	--disable-ssl

.include <bsd.port.mk>
