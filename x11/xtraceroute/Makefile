# $OpenBSD: Makefile,v 1.36 2015/04/21 18:13:10 sthen Exp $

COMMENT=	graphical version of traceroute

DISTNAME=	xtraceroute-0.9.2
REVISION=	2

CATEGORIES=	net x11

HOMEPAGE=	http://www.beebgames.com/sw/gtk-ports.html

MASTER_SITES=	http://www.beebgames.com/sw/
EXTRACT_SUFX=	.tar.bz2

MASTER_SITES0=	http://www.dtek.chalmers.se/~d3august/xt/dl/
DISTFILES=	xtraceroute-0.9.2.tar.bz2 ndg_files.tar.gz:0


# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL GLU X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 gtkgl-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread
WANTLIB += pthread-stubs xcb z

MODULES=	devel/gettext


LIB_DEPENDS=	x11/gtkglarea

USE_GMAKE=	Yes
AUTOCONF_VERSION=2.57
CONFIGURE_STYLE= autoconf
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/xtraceroute
	${INSTALL_DATA} ${WRKDIR}/hosts.cache ${PREFIX}/share/xtraceroute
	${INSTALL_DATA} ${WRKDIR}/networks.cache ${PREFIX}/share/xtraceroute

.include <bsd.port.mk>
