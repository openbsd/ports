# $OpenBSD: Makefile,v 1.1.1.1 2003/06/06 22:09:52 jolan Exp $

COMMENT=	"VPN scanner and identifier"
DISTNAME=	ike-scan-1.1
CATEGORIES=	net
MASTER_SITES=	http://berlin.ccc.de/~cryx/ike-scan/ \
		http://lithely.net/distfiles/

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
