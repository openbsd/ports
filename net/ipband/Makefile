# $OpenBSD: Makefile,v 1.6 2002/04/17 21:42:12 naddy Exp $

COMMENT=	"pcap based IP traffic monitor"

DISTNAME=	ipband-0.7.2
CATEGORIES=	net
NEED_VERSION=	1.518

HOMEPAGE=	http://ipband.sourceforge.net/

MAINTAINER=	Vincent Derrien <vincent.derrien@free.fr>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=  	.tgz

NO_REGRESS=	Yes
MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ipband ${PREFIX}/bin/ipband
	${INSTALL_DATA} ${WRKSRC}/ipband.1 ${PREFIX}/man/man1/ipband.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ipband/
	${INSTALL_DATA} ${WRKSRC}/ipband.sample.conf \
		${PREFIX}/share/examples/ipband/ipband.sample.conf

.include <bsd.port.mk>
