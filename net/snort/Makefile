# $OpenBSD: Makefile,v 1.2 2000/02/11 01:10:10 espie Exp $

DISTNAME=	snort-1.5.1
CATEGORIES=	net security
MASTER_SITES=	http://www.clark.net/~roesch/ \
		ftp://gd.tuwien.ac.at/infosys/security/snort/ \
		http://snort.whitehats.com/

MAINTAINER=	halogen@nol.net

GNU_CONFIGURE=	yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/snort ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/snort.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/snort
	${INSTALL_DATA} ${WRKSRC}/*-lib ${PREFIX}/share/snort
	@echo "===> Rule examples installed in ${PREFIX}/share/snort"

.include <bsd.port.mk>
