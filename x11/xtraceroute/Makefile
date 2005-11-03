# $OpenBSD: Makefile,v 1.24 2005/11/03 18:28:57 naddy Exp $
# $NetBSD: Makefile,v 1.4 1999/03/04 08:58:42 tron Exp $

COMMENT=	"graphical version of traceroute"

DISTNAME=	xtraceroute-0.9.0
CATEGORIES=	net x11
MASTER_SITES=	http://www.dtek.chalmers.se/~d3august/xt/dl/
DISTFILES=	xtraceroute-0.9.0.tar.gz ndg_files.tar.gz

HOMEPAGE=	http://www.dtek.chalmers.se/~d3august/xt/

LIB_DEPENDS=	gtkgl.1.2::x11/gtkglarea \
		png::graphics/png \
		gdk_pixbuf.2::graphics/gdk-pixbuf

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		GL GLU X11 Xext Xi c gdk glib gmodule gtk iconv intl \
			jpeg m tiff z 

USE_X11=	Yes
AUTOCONF_VERSION=2.13
CONFIGURE_STYLE= autoconf
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/xtraceroute
	${INSTALL_DATA} ${WRKDIR}/hosts.cache ${PREFIX}/share/xtraceroute
	${INSTALL_DATA} ${WRKDIR}/networks.cache ${PREFIX}/share/xtraceroute

.include <bsd.port.mk>
