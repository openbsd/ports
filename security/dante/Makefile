# $OpenBSD: Makefile,v 1.6 2000/03/20 22:35:14 jakob Exp $

DISTNAME=	dante-1.1.1
CATEGORIES=	security

MAINTAINER=     jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=	ftp://ftp.inet.no/pub/socks/

GNU_CONFIGURE=	yes
FAKE=		yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/socks
	${INSTALL_DATA} ${WRKSRC}/example/*.conf ${PREFIX}/share/examples/socks
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
