# $OpenBSD: Makefile,v 1.3 1999/08/17 12:28:45 downsj Exp $
# $FreeBSD: Makefile,v 1.5 1998/06/25 03:13:16 vanilla Exp $

DISTNAME=	gd-1.6.3
CATEGORIES=	graphics
MASTER_SITES=	http://www.boutell.com/gd/http/ \
		ftp://ftp.boutell.com/pub/boutell/gd/

NEED_VERSION=	1.73

LIB_DEPENDS=	png.1.3:${PORTSDIR}/graphics/png

MAINTAINER=	brad@openbsd.org
HOMEPAGE=	http://www.boutell.com/gd/

SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	@${MKDIR} ${PREFIX}/share/examples/gd
	${INSTALL_DATA} ${WRKSRC}/demoin.png ${PREFIX}/share/examples/gd
	${INSTALL_DATA} ${WRKSRC}/index.html ${PREFIX}/share/examples/gd

.include <bsd.port.mk>
