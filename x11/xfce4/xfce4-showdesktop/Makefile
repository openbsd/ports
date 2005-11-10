# $OpenBSD: Makefile,v 1.4 2005/11/10 22:57:40 jolan Exp $

COMMENT=	"hides/unhides all unsticky windows with one click"
DISTNAME=	xfce4-showdesktop-plugin-0.4.0
PKGNAME=	${DISTNAME:S/-plugin//}p2
MASTER_SITES=	http://download.berlios.de/xfce-goodies/

HOMEPAGE=	http://xfce-goodies.berlios.de/

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

WRKDIST=	${WRKDIR}/xfce4-showdesktop-plugin

.include <bsd.port.mk>
