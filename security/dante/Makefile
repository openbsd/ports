# $OpenBSD: Makefile,v 1.2 2000/01/06 10:50:11 jakob Exp $

DISTNAME=	dante-1.1.1
CATEGORIES=	security

MAINTAINER=     jakob@openbsd.org

MASTER_SITES=	ftp://ftp.inet.no/pub/socks/

GNU_CONFIGURE=	yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/socks
	${INSTALL_DATA} ${WRKSRC}/example/*.conf ${PREFIX}/share/examples/socks
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
