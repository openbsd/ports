# $OpenBSD: Makefile,v 1.9 2006/09/18 12:19:41 espie Exp $

COMMENT=	"puts a small entry widget onto your panel"
DISTNAME=	xfce4-minicmd-plugin-0.3.0
PKGNAME=	${DISTNAME:S/-plugin//}p4
MASTER_SITES=	${MASTER_SITE_BERLIOS:=xfce-goodies/}

HOMEPAGE=	http://xfce-goodies.berlios.de/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	devel/gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		:xfce4-panel-*:x11/xfce4/xfce4-panel
LIB_DEPENDS=	xfcegui4.>=3.4::x11/xfce4/libxfcegui4 \
		xml2.>=9.0::textproc/libxml
RUN_DEPENDS=	:xfce4-panel-*:x11/xfce4/xfce4-panel
WANTLIB=	ICE SM X11 Xext Xrender fontconfig freetype m z \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 \
		pangoft2-1.0 pangocairo-1.0 cairo glitz png \
		startup-notification-1 xfce4util.>=1

.include <bsd.port.mk>
