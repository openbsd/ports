# $OpenBSD: Makefile,v 1.13 2010/10/18 18:36:48 espie Exp $

COMMENT=	VPN scanner and identifier
DISTNAME=	ike-scan-1.9
REVISION=	0
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}download/

HOMEPAGE=	http://www.nta-monitor.com/ike-scan/

MAINTAINER=	Srebrenko Sehic <haver@insecure.dk>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=		c crypto

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--with-openssl
USE_GROFF =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ike-scan
	${INSTALL_DATA} ${WRKSRC}/udp-backoff-fingerprinting-paper.txt \
		${WRKSRC}/README ${PREFIX}/share/doc/ike-scan

.include <bsd.port.mk>
