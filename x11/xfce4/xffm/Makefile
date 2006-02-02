# $OpenBSD: Makefile,v 1.7 2006/02/02 22:15:54 steven Exp $

COMMENT=	"xfce4 file manager"
V=		4.2.3
DISTNAME=	xffm-${V}
PKGNAME=	${DISTNAME}p3
SHARED_LIBS=	xffm_actions	1.0 \
		xffm_basic	1.0 \
		xffm_calls	1.0 \
		xffm_cpy	1.0 \
		xffm_on_demand	1.0 \
		xffm_secondary	1.0 \
		xffm_tubo	1.0
MODGNU_SHARED_LIBS=	xffm_actions	-export-dynamic \
			xffm_basic	-export-dynamic \
			xffm_calls	-export-dynamic \
			xffm_cpy	-export-dynamic \
			xffm_on_demand	-export-dynamic \
			xffm_secondary	-export-dynamic \
			xffm_tubo	-export-dynamic
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
LIB_DEPENDS=	dbh.1.0::databases/dbh \
		xml2.9.0::textproc/libxml \
		xfcegui4.3.4::x11/xfce4/libxfcegui4 \
		xfce4mcs-client.2.3,xfce4mcs-manager.2.3::x11/xfce4/libxfce4mcs
RUN_DEPENDS=	:xfce-mcs-manager-*:x11/xfce4/xfce-mcs-manager
WANTLIB=	ICE SM X11 Xext Xft Xrender c fontconfig freetype m pthread z \
		atk-1.0.0.0 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glib-2.0.0.0 \
		gmodule-2.0.0.0 gobject-2.0.0.0 gthread-2.0.0.0 \
		gtk-x11-2.0.0.0 pango-1.0.0.0 \
		pangoft2-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 \
		startup-notification-1.0.0 xfce4util.1

CONFIGURE_ARGS+=--disable-librsvg \
		--enable-panel \
		--enable-scrambledir

.include <bsd.port.mk>
