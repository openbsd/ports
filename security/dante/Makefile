# $OpenBSD: Makefile,v 1.1.1.1 1999/12/30 08:30:38 jakob Exp $

DISTNAME=	dante-1.1.0
CATEGORIES=	security

MAINTAINER=     jakob@openbsd.org

MASTER_SITES=	ftp://ftp.inet.no/pub/socks/

GNU_CONFIGURE=	yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/socks
	${INSTALL_DATA} ${WRKSRC}/example/*.conf ${PREFIX}/share/examples/socks
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
