# $OpenBSD: Makefile,v 1.3 2000/02/13 12:59:49 jakob Exp $

DISTNAME=	dante-1.1.1
CATEGORIES=	security

MAINTAINER=     jakob@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

MASTER_SITES=	ftp://ftp.inet.no/pub/socks/

GNU_CONFIGURE=	yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/socks
	${INSTALL_DATA} ${WRKSRC}/example/*.conf ${PREFIX}/share/examples/socks
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
