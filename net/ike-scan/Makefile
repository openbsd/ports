# $OpenBSD: Makefile,v 1.5 2004/04/07 19:49:04 sturm Exp $

COMMENT=	"VPN scanner and identifier"
DISTNAME=	ike-scan-1.6
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}download/ \
		http://berlin.ccc.de/~cryx/ike-scan/

HOMEPAGE=	http://www.nta-monitor.com/ike-scan/

MAINTAINER=	Srebrenko Sehic <haver@insecure.dk>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ike-scan
	${INSTALL_DATA} ${WRKSRC}/udp-backoff-fingerprinting-paper.txt \
		${WRKSRC}/README ${PREFIX}/share/doc/ike-scan

.include <bsd.port.mk>
