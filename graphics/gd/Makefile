# $OpenBSD: Makefile,v 1.7 1999/11/26 16:50:03 brad Exp $
# $FreeBSD: Makefile,v 1.5 1998/06/25 03:13:16 vanilla Exp $

DISTNAME=	gd-1.7.3
CATEGORIES=	graphics
MASTER_SITES=	http://www.boutell.com/gd/http/ \
		ftp://ftp.boutell.com/pub/boutell/gd/

HOMEPAGE=	http://www.boutell.com/gd/

NEED_VERSION=	1.73

LIB_DEPENDS=	png.1.3:${PORTSDIR}/graphics/png \
		ttf.1.2:${PORTSDIR}/print/freetype

MAINTAINER=	brad@openbsd.org

post-install:
	@mkdir -p ${PREFIX}/share/examples/gd
	${INSTALL_DATA} ${WRKSRC}/demoin.png ${PREFIX}/share/examples/gd
	${INSTALL_DATA} ${WRKSRC}/demoout.png ${PREFIX}/share/examples/gd
	${INSTALL_DATA} ${WRKSRC}/index.html ${PREFIX}/share/examples/gd
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS)
MAKE_ENV= NO_SHARED_LIBS=yes
.endif
