# $OpenBSD: Makefile,v 1.1.1.1 1999/03/22 17:24:37 brad Exp $
# $NetBSD: Makefile,v 1.4 1999/03/04 08:58:42 tron Exp $

DISTNAME=	xtraceroute-0.8.14
CATEGORIES=	net x11
MASTER_SITES=	http://www.dtek.chalmers.se/~d3august/xt/dl/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		ndg_files.tar.gz

MAINTAINER=	brad@openbsd.org

HOMEPAGE=	http://www.dtek.chalmers.se/~d3august/xt/index.html

BUILD_DEPENDS=  gettext:${PORTSDIR}/devel/gettext
RUN_DEPENDS=    gettext:${PORTSDIR}/devel/gettext
LIB_DEPENDS=	MesaGL:${PORTSDIR}/graphics/MesaGL \
		MesaGLU:${PORTSDIR}/graphics/MesaGL \
		gtkgl:${PORTSDIR}/x11/gtkglarea \
		tiff:${PORTSDIR}/graphics/tiff34

USE_X11=	yes
GNU_CONFIGURE=	yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/xtraceroute/
	${INSTALL_DATA} ${WRKDIR}/hosts.cache ${PREFIX}/share/xtraceroute/
	${INSTALL_DATA} ${WRKDIR}/networks.cache ${PREFIX}/share/xtraceroute/

.include <bsd.port.mk>
