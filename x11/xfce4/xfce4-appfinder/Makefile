# $OpenBSD: Makefile,v 1.3 2005/11/10 22:57:38 jolan Exp $

COMMENT=	"xfce4 application finder"
V=		4.2.3
DISTNAME=	xfce4-appfinder-${V}
MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/

HOMEPAGE=	http://www.xfce.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	devel/gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	xfcegui4.3.4::x11/xfce4/libxfcegui4
RUN_DEPENDS=	:xfdesktop-*:x11/xfce4/xfdesktop
WANTLIB=	ICE SM X11 Xcursor Xext Xft Xinerama Xrender c fontconfig \
		freetype m \
		atk-1.0.0.0 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glib-2.0.0.0 \
		gmodule-2.0.0.0 gobject-2.0.0.0 gtk-x11-2.0.0.0 pango-1.0.0.0 \
		pangoft2-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 \
		startup-notification-1.0.0 xfce4util.1


.include <bsd.port.mk>
