# $OpenBSD: Makefile,v 1.1.1.1 2005/05/12 04:38:37 jolan Exp $

COMMENT=	"xfce4 desktop background manager"
V=		4.2.1
DISTNAME=	xfdesktop-${V}
MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/

HOMEPAGE=	http://www.xfce.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	devel/gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		:xfce-mcs-manager-*:x11/xfce4/xfce-mcs-manager \
		:xfce4-panel-*:x11/xfce4/xfce4-panel
LIB_DEPENDS=	xfcegui4.3.3::x11/xfce4/libxfcegui4 \
		xfce4mcs-client.2.3::x11/xfce4/libxfce4mcs \
		xml2.9.0::textproc/libxml
RUN_DEPENDS=	:xfce-mcs-manager-*:x11/xfce4/xfce-mcs-manager \
		:xfce4-panel-*:x11/xfce4/xfce4-panel
WANTLIB=	ICE SM X11 Xcursor Xext Xft Xinerama Xrender c fontconfig \
		freetype m z \
		atk-1.0.0.0 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glib-2.0.0.0 \
		gmodule-2.0.0.0 gobject-2.0.0.0 gtk-x11-2.0.0.0 pango-1.0.0.0 \
		pangoft2-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 \
		startup-notification-1.0.0 xfce4util.1


# XXX workaround libtool's versioning of simple shared object modules
post-install:
	${INSTALL_DATA} ${WRKSRC}/modules/menu/.libs/xfce4_desktop_menu.so.0.0 \
		${PREFIX}/lib/xfce4/modules/xfce4_desktop_menu.so
	${INSTALL_DATA} ${WRKSRC}/panel-plugin/.libs/libdesktopmenu.so.0.0 \
		${PREFIX}/lib/xfce4/panel-plugins/libdesktopmenu.so
	${INSTALL_DATA} ${WRKSRC}/settings/.libs/backdrop_settings.so.0.0 \
		${PREFIX}/lib/xfce4/mcs-plugins/backdrop_settings.so

.include <bsd.port.mk>
