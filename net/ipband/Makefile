# $OpenBSD: Makefile,v 1.2 2001/11/02 00:51:04 lebel Exp $

COMMENT=	"pcap based IP traffic monitor"

VERSION=	0.6
DISTNAME=	ipband-${VERSION}
CATEGORIES=	net
NEED_VERSION=	1.488
EXTRACT_SUFX=  	.tgz

HOMEPAGE=	http://ipband.sourceforge.net/
MASTER_SITES=	http://ipband.sourceforge.net/

MAINTAINER=	Vincent Derrien <hyzzod@free.fr>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ipband ${PREFIX}/bin/ipband
	${INSTALL_DATA} ${WRKSRC}/ipband.1 ${PREFIX}/man/man1/ipband.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ipband/
	${INSTALL_DATA} ${WRKSRC}/ipband.sample.conf \
		          ${PREFIX}/share/examples/ipband/ipband.sample.conf

.include <bsd.port.mk>
