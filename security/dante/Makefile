# $OpenBSD: Makefile,v 1.4 2000/02/15 05:05:09 turan Exp $

DISTNAME=	dante-1.1.1
CATEGORIES=	security

MAINTAINER=     jakob@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=	ftp://ftp.inet.no/pub/socks/

GNU_CONFIGURE=	yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/socks
	${INSTALL_DATA} ${WRKSRC}/example/*.conf ${PREFIX}/share/examples/socks
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
