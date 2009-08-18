# $OpenBSD: Makefile,v 1.24 2009/08/18 23:58:56 jolan Exp $

COMMENT=		gtk-based frontend to cdrtools
DISTNAME=		xcdroast-0.98alpha16
PKGNAME=		${DISTNAME:L:S/alpha/a/}
CATEGORIES=		misc x11
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xcdroast/}

HOMEPAGE=		http://www.xcdroast.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z

USE_X11=	Yes

MODULES=	devel/gettext

RUN_DEPENDS=	:cdrtools->=2.0:sysutils/cdrtools
LIB_DEPENDS=	gdk_pixbuf-2.0.>=0.14,gdk-x11-2.0.>=0.14,gtk-x11-2.0.>=0.14::x11/gtk+2

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-gtk2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/xpms/xcdricon.xpm \
		${PREFIX}/share/pixmaps/xcdricon.xpm

.include <bsd.port.mk>
