# $OpenBSD: Makefile,v 1.4 2000/03/13 03:21:05 kevlo Exp $

DISTNAME=	snort-1.5.1
CATEGORIES=	net security
MASTER_SITES=	http://www.clark.net/~roesch/ \
		ftp://gd.tuwien.ac.at/infosys/security/snort/ \
		http://snort.whitehats.com/

MAINTAINER=	halogen@nol.net

FAKE=		Yes
GNU_CONFIGURE=	Yes

NO_PATCH=      Yes

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=        Yes
PERMIT_DISTFILES_FTP=  Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/snort.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/snort
	${INSTALL_DATA} ${WRKSRC}/*-lib ${PREFIX}/share/snort

.include <bsd.port.mk>
