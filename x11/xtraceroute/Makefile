# $OpenBSD: Makefile,v 1.5 1999/06/20 23:54:29 brad Exp $
# $NetBSD: Makefile,v 1.4 1999/03/04 08:58:42 tron Exp $

DISTNAME=	xtraceroute-0.8.14
CATEGORIES=	net x11
MASTER_SITES=	http://www.dtek.chalmers.se/~d3august/xt/dl/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		ndg_files.tar.gz

MAINTAINER=	brad@openbsd.org

HOMEPAGE=	http://www.dtek.chalmers.se/~d3august/xt/index.html

LIB_DEPENDS=	MesaGL:${PORTSDIR}/graphics/Mesa \
		MesaGLU:${PORTSDIR}/graphics/Mesa \
		gtkgl:${PORTSDIR}/x11/gtkglarea \
		intl:${PORTSDIR}/devel/gettext \
		tiff:${PORTSDIR}/graphics/tiff34

USE_X11=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		GTK_CONFIG="${X11BASE}/bin/gtk-config"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/xtraceroute/
	${INSTALL_DATA} ${WRKDIR}/hosts.cache ${PREFIX}/share/xtraceroute/
	${INSTALL_DATA} ${WRKDIR}/networks.cache ${PREFIX}/share/xtraceroute/

.include <bsd.port.mk>
