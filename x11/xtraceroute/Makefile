# $OpenBSD: Makefile,v 1.8 2000/02/12 08:02:35 turan Exp $
# $NetBSD: Makefile,v 1.4 1999/03/04 08:58:42 tron Exp $

DISTNAME=	xtraceroute-0.8.14
CATEGORIES=	net x11
MASTER_SITES=	http://www.dtek.chalmers.se/~d3august/xt/dl/
DISTFILES=	${DISTNAME}.tar.gz \
		ndg_files.tar.gz

HOMEPAGE=	http://www.dtek.chalmers.se/~d3august/xt/index.html

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

LIB_DEPENDS=	intl:${PORTSDIR}/devel/gettext \
		MesaGL.3:${PORTSDIR}/graphics/Mesa \
		MesaGLU.3:${PORTSDIR}/graphics/Mesa \
		gtkgl.1.2:${PORTSDIR}/x11/gtkglarea \
		tiff.35:${PORTSDIR}/graphics/tiff

USE_X11=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		GTK_CONFIG="${X11BASE}/bin/gtk-config"

post-install:
	@mkdir -p ${PREFIX}/share/xtraceroute/
	${INSTALL_DATA} ${WRKDIR}/hosts.cache ${PREFIX}/share/xtraceroute/
	${INSTALL_DATA} ${WRKDIR}/networks.cache ${PREFIX}/share/xtraceroute/

.include <bsd.port.mk>
