# $OpenBSD: Makefile,v 1.14 2000/04/16 16:25:17 brad Exp $
# $NetBSD: Makefile,v 1.4 1999/03/04 08:58:42 tron Exp $

DISTNAME=	xtraceroute-0.8.14
CATEGORIES=	net x11
NEED_VERSION=	1.234
MASTER_SITES=	http://www.dtek.chalmers.se/~d3august/xt/dl/
DISTFILES=	${DISTNAME}.tar.gz \
		ndg_files.tar.gz

HOMEPAGE=	http://www.dtek.chalmers.se/~d3august/xt/index.html

LIB_DEPENDS=	intl::devel/gettext \
		MesaGL.3::graphics/Mesa \
		gtkgl.1.2::x11/gtkglarea \
		tiff.35::graphics/tiff

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

USE_X11=	Yes
GNU_CONFIGURE=	Yes
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/xtraceroute
	${INSTALL_DATA} ${WRKDIR}/hosts.cache ${PREFIX}/share/xtraceroute
	${INSTALL_DATA} ${WRKDIR}/networks.cache ${PREFIX}/share/xtraceroute

.include <bsd.port.mk>
