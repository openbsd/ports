# $OpenBSD: Makefile,v 1.42 2020/07/03 22:14:41 sthen Exp $

COMMENT=	graphical version of traceroute

DISTNAME=	xtraceroute-0.9.2
REVISION=	7

CATEGORIES=	net x11

HOMEPAGE=	http://www.beebgames.com/sw/gtk-ports.html

MASTER_SITES=	http://www.beebgames.com/sw/
EXTRACT_SUFX=	.tar.bz2

MASTER_SITES0=	http://www.dtek.chalmers.se/~d3august/xt/dl/
DISTFILES=	xtraceroute-0.9.2.tar.bz2 ndg_files.tar.gz:0

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += GL GLU X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 gtkgl-2.0 intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pthread z

LIB_DEPENDS=	devel/gettext,-runtime \
		x11/gtkglarea

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
