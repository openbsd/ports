#	$OpenBSD: Makefile,v 1.5 2006/09/25 03:01:46 pedro Exp $

COMMENT=	"lua driven plugin for the xfce4 panel"
DISTNAME=	xfce4-lua-graph-plugin-0.1
PKGNAME=	${DISTNAME:S/-plugin//}p1
MASTER_SITES=	${MASTER_SITE_BERLIOS:=xfce-goodies/}

HOMEPAGE=	http://xfce-goodies.berlios.de/

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59

MODULES=	devel/gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		:xfce4-panel-*:x11/xfce4/xfce4-panel
LIB_DEPENDS=	xfcegui4.>=3.4::x11/xfce4/libxfcegui4 \
		xml2.>=9.0::textproc/libxml \
		lua.>=5.1::lang/lua
RUN_DEPENDS=	:xfce4-panel-*:x11/xfce4/xfce4-panel
WANTLIB=	ICE SM X11 Xext Xrender fontconfig freetype m z \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 \
		pangoft2-1.0 pangocairo-1.0 cairo glitz png \
		startup-notification-1 xfce4util

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xfce4-lua-graph
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xfce4-lua-graph
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xfce4-lua-graph
	${INSTALL_DATA} ${WRKSRC}/scripts/* \
		${PREFIX}/share/examples/xfce4-lua-graph

.include <bsd.port.mk>
