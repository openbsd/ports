# $OpenBSD: Makefile,v 1.3 2000/02/24 03:43:21 kevlo Exp $

DISTNAME=	snort-1.5.1
CATEGORIES=	net security
MASTER_SITES=	http://www.clark.net/~roesch/ \
		ftp://gd.tuwien.ac.at/infosys/security/snort/ \
		http://snort.whitehats.com/

MAINTAINER=	halogen@nol.net

LICENSE_TYPE=         GPL
PERMIT_PACKAGE_CDROM= YES
PERMIT_PACKAGE_FTP=   YES
PERMIT_DISTFILES_CDROM=       YES
PERMIT_DISTFILES_FTP= YES

NO_PATCH=     yes
GNU_CONFIGURE=	yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/snort ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/snort.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/snort
	${INSTALL_DATA} ${WRKSRC}/*-lib ${PREFIX}/share/snort
	@echo "===>  Rule examples installed in ${PREFIX}/share/snort"

.include <bsd.port.mk>
