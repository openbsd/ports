# $OpenBSD: Makefile,v 1.5 1999/11/16 08:03:23 kevlo Exp $
# $FreeBSD: Makefile,v 1.5 1998/06/25 03:13:16 vanilla Exp $

DISTNAME=	gd-1.7.3
CATEGORIES=	graphics
MASTER_SITES=	http://www.boutell.com/gd/http/ \
		ftp://ftp.boutell.com/pub/boutell/gd/

LIB_DEPENDS=	png.1.3:${PORTSDIR}/graphics/png \
		ttf.1.2:${PORTSDIR}/print/freetype

MAINTAINER=	brad@openbsd.org
HOMEPAGE=	http://www.boutell.com/gd/

post-install:
	@${MKDIR} ${PREFIX}/share/examples/gd
	${INSTALL_DATA} ${WRKSRC}/demoin.png ${PREFIX}/share/examples/gd
	${INSTALL_DATA} ${WRKSRC}/index.html ${PREFIX}/share/examples/gd

.include <bsd.port.mk>
