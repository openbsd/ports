# $OpenBSD: Makefile,v 1.1.1.1 2006/10/20 00:51:01 jasper Exp $

COMMENT=		"editor for XFCE's backdrop list"
DISTNAME=		xfce4-bglist-editor-4.2.0
PKGNAME=		${DISTNAME:S/-plugin//}

HOMEPAGE=		http://xfce-goodies.berlios.de/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xrender fontconfig c freetype m \
			iconv z atk-1.0 cairo.>=4 gdk-x11-2.0 gdk_pixbuf-2.0 \
			glitz.>=1 glib-2.0 gmodule-2.0 gobject-2.0 gtk-x11-2.0 \
			pango-1.0  pangoft2-1.0.>=1200 pangocairo-1.0.>=1200 \
			png.>=5 xfce4util.>=1

MASTER_SITES=		${MASTER_SITE_BERLIOS:=xfce-goodies/}

MODULES=		devel/gettext
BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:xfce4-panel-*:x11/xfce4/xfce4-panel
LIB_DEPENDS=		xfcegui4.>=3.4::x11/xfce4/libxfcegui4 \
			startup-notification-1::devel/startup-notification

SEPERATE_BUILD=		simple
USE_X11=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
