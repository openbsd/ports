# $OpenBSD: Makefile,v 1.1.1.1 2002/11/07 18:02:16 jakob Exp $

COMMENT=	"SSLv3/TLS and SSLv2 sniffer"

DISTNAME=	sslsniffer-1.21
CATEGORIES=	net security
HOMEPAGE=	http://crypto.stanford.edu/~eujin/sslsniffer/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Patroklos Argyroudis <argp@ieee.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MAKE_FLAGS=	CC='${CC}'

WRKDIST=	${WRKDIR}/sslsniffer

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sslsniffer ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sslsniffer
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/sslsniffer

.include <bsd.port.mk>
