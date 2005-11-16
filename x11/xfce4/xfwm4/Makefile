# $OpenBSD: Makefile,v 1.4 2005/11/16 10:06:45 wilfried Exp $

COMMENT=	"xfce4 window manager"
V=		4.2.3.1
DISTNAME=	xfwm4-${V}
PKGNAME=	${DISTNAME}p0
MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/

HOMEPAGE=	http://www.xfce.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	devel/gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		:xfce-mcs-manager-*:x11/xfce4/xfce-mcs-manager
LIB_DEPENDS=	xfcegui4.3.4::x11/xfce4/libxfcegui4 \
		xfce4mcs-client.2.3,xfce4mcs-manager.2.3::x11/xfce4/libxfce4mcs
RUN_DEPENDS=	:xfce-mcs-manager-*:x11/xfce4/xfce-mcs-manager
WANTLIB=	ICE SM X11 Xext Xpm Xrandr Xrender c \
		fontconfig freetype m z \
		atk-1.0.0.0 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glib-2.0.0.0 \
		gmodule-2.0.0.0 gobject-2.0.0.0 gtk-x11-2.0.0.0 pango-1.0.0.0 \
		pangocairo-1.0.0.0 pangoft2-1.0.0.0 startup-notification-1.0.0 \
		xfce4util.1 cairo glitz png

.include <bsd.port.mk>
