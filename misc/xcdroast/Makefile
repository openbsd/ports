# $OpenBSD: Makefile,v 1.37 2015/08/21 19:17:10 sthen Exp $

COMMENT=		gtk-based frontend to cdrtools
DISTNAME=		xcdroast-0.98alpha16
PKGNAME=		${DISTNAME:L:S/alpha/a/}
REVISION=		6
CATEGORIES=		misc x11
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xcdroast/}

HOMEPAGE=		http://www.xcdroast.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += z gdk_pixbuf-2.0 gdk-x11-2.0 gtk-x11-2.0
WANTLIB += pthread sndio


MODULES=	devel/gettext

RUN_DEPENDS=	sysutils/cdrtools>=2.0
LIB_DEPENDS=	x11/gtk+2

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-gtk2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/xpms/xcdricon.xpm \
		${PREFIX}/share/pixmaps/xcdricon.xpm

.include <bsd.port.mk>
