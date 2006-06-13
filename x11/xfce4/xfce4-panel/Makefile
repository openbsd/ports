# $OpenBSD: Makefile,v 1.6 2006/06/13 13:39:06 bernd Exp $

COMMENT=	"xfce4 panel"
V=		4.2.3
DISTNAME=	xfce4-panel-${V}
PKGNAME=	${DISTNAME}p2
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
		xml2.9.0::textproc/libxml \
		xfce4mcs-client.2.3,xfce4mcs-manager.2.3::x11/xfce4/libxfce4mcs
RUN_DEPENDS=	:xfce-mcs-manager-*:x11/xfce4/xfce-mcs-manager
WANTLIB=	ICE SM X11 Xext Xrender c fontconfig freetype m z \
		atk-1.0.0.0 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glib-2.0.0.0 \
		gmodule-2.0.0.0 gobject-2.0.0.0 gtk-x11-2.0.0.0 pango-1.0.0.0 \
		pangoft2-1.0.0.0 pangocairo-1.0.0.0 cairo glitz png \
		startup-notification-1.0.0 xfce4util.1

.include <bsd.port.mk>
