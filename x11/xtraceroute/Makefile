# $OpenBSD: Makefile,v 1.11 2000/03/19 16:59:11 espie Exp $
# $NetBSD: Makefile,v 1.4 1999/03/04 08:58:42 tron Exp $

DISTNAME=	xtraceroute-0.8.14
CATEGORIES=	net x11
NEED_VERSION=	1.223
MASTER_SITES=	http://www.dtek.chalmers.se/~d3august/xt/dl/
DISTFILES=	${DISTNAME}.tar.gz \
		ndg_files.tar.gz

HOMEPAGE=	http://www.dtek.chalmers.se/~d3august/xt/index.html

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	intl:devel/gettext \
		MesaGL.3:graphics/Mesa \
		MesaGLU.3:graphics/Mesa \
		gtkgl.1.2:x11/gtkglarea \
		tiff.35:graphics/tiff

USE_X11=	Yes
GNU_CONFIGURE=	Yes
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		GTK_CONFIG="${LOCALBASE}/bin/gtk-config"

post-install:
	@mkdir -p ${PREFIX}/share/xtraceroute/
	${INSTALL_DATA} ${WRKDIR}/hosts.cache ${PREFIX}/share/xtraceroute/
	${INSTALL_DATA} ${WRKDIR}/networks.cache ${PREFIX}/share/xtraceroute/

.include <bsd.port.mk>
