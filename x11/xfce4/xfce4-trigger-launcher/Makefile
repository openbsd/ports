# $OpenBSD: Makefile,v 1.2 2005/05/22 01:30:46 jolan Exp $

COMMENT=	"provides a toggle button showing on/off state for xfce4-panel"
V=		4.2.2
DISTNAME=	xfce4-trigger-launcher-${V}
MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/

HOMEPAGE=	http://www.xfce.org/

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	devel/gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		:xfce4-panel-*:x11/xfce4/xfce4-panel
LIB_DEPENDS=	xfcegui4.3.4::x11/xfce4/libxfcegui4 \
		xml2.9.0::textproc/libxml
RUN_DEPENDS=	:xfce4-panel-*:x11/xfce4/xfce4-panel
WANTLIB=	X11 Xcursor Xext Xft Xinerama Xrender fontconfig freetype m z \
		atk-1.0.0.0 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glib-2.0.0.0 \
		gmodule-2.0.0.0 gobject-2.0.0.0 gtk-x11-2.0.0.0 pango-1.0.0.0 \
		pangox-1.0.0.0 pangoxft-1.0.0.0 xfce4util.1


# XXX workaround libtool's versioning of simple shared object modules
post-install:
	${INSTALL_DATA} ${WRKSRC}/panel-plugin/.libs/libtriggerlauncher.so.0.0 \
		${PREFIX}/lib/xfce4/panel-plugins/libtriggerlauncher.so

.include <bsd.port.mk>
