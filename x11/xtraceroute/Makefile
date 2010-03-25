# $OpenBSD: Makefile,v 1.27 2010/03/25 06:30:15 jasper Exp $
# $NetBSD: Makefile,v 1.4 1999/03/04 08:58:42 tron Exp $

COMMENT=	graphical version of traceroute

DISTNAME=	xtraceroute-0.9.2
CATEGORIES=	net x11

HOMEPAGE=	http://www.beebgames.com/sw/gtk-ports.html

MASTER_SITES=	http://www.beebgames.com/sw/
EXTRACT_SUFX=	.tar.bz2

MASTER_SITES0=	http://www.dtek.chalmers.se/~d3august/xt/dl/
DISTFILES=	xtraceroute-0.9.2.tar.bz2 ndg_files.tar.gz:0


# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext

WANTLIB += GL GLU X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z

LIB_DEPENDS=	gtkgl-2.0::x11/gtkglarea

USE_GMAKE=	Yes
USE_X11=	Yes
AUTOCONF_VERSION=2.57
CONFIGURE_STYLE= autoconf
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/xtraceroute
	${INSTALL_DATA} ${WRKDIR}/hosts.cache ${PREFIX}/share/xtraceroute
	${INSTALL_DATA} ${WRKDIR}/networks.cache ${PREFIX}/share/xtraceroute

.include <bsd.port.mk>
