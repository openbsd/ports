# $OpenBSD: Makefile,v 1.2 2003/06/09 06:44:11 jolan Exp $

COMMENT=	"VPN scanner and identifier"
DISTNAME=	ike-scan-1.1
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}download/ \
		http://berlin.ccc.de/~cryx/ike-scan/

HOMEPAGE=	http://www.nta-monitor.com/ike-scan/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

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
