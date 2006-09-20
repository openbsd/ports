# $OpenBSD: Makefile,v 1.1.1.1 2006/09/20 17:30:04 jasper Exp $

COMMENT=	"volume mixer module for xfce4-panel"
V=		4.2.3
DISTNAME=	xfce4-mixer-${V}
SHARED_LIBS=    xfce4mixer 0.0
MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/

HOMEPAGE=	http://www.xfce.org/

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	devel/gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		:xfce-mcs-manager-*:x11/xfce4/xfce-mcs-manager \
		:xfce4-panel-*:x11/xfce4/xfce4-panel
LIB_DEPENDS=	xfcegui4.>=3.4::x11/xfce4/libxfcegui4 \
		xfce4mcs-client.>=2.3::x11/xfce4/libxfce4mcs \
		xml2.>=9::textproc/libxml
RUN_DEPENDS=	:xfce-mcs-manager-*:x11/xfce4/xfce-mcs-manager \
		:xfce4-panel-*:x11/xfce4/xfce4-panel
WANTLIB=	ICE Xrender SM freetype c Xext m fontconfig X11 z \
		gmodule-2.0 glib-2.0 pangocairo-1.0 pango-1.0 \
		gdk_pixbuf-2.0 gtk-x11-2.0 gdk-x11-2.0 pangoft2-1.0 \
		cairo startup-notification-1 glitz atk-1.0 png \
		gobject-2.0 xfce4util.>=1 ossaudio

CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--with-sound=oss

.include <bsd.port.mk>
