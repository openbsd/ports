# $OpenBSD: Makefile,v 1.19 2002/07/30 14:36:50 brad Exp $
# $NetBSD: Makefile,v 1.4 1999/03/04 08:58:42 tron Exp $

COMMENT=	"graphical version of traceroute"

DISTNAME=	xtraceroute-0.8.14
CATEGORIES=	net x11
MASTER_SITES=	http://www.dtek.chalmers.se/~d3august/xt/dl/
DISTFILES=	xtraceroute-0.8.14.tar.gz ndg_files.tar.gz

HOMEPAGE=	http://www.dtek.chalmers.se/~d3august/xt/

LIB_DEPENDS=	gtkgl.1.2::x11/gtkglarea \
		tiff.35::graphics/tiff

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/xtraceroute
	${INSTALL_DATA} ${WRKDIR}/hosts.cache ${PREFIX}/share/xtraceroute
	${INSTALL_DATA} ${WRKDIR}/networks.cache ${PREFIX}/share/xtraceroute

.include <bsd.port.mk>
