# $OpenBSD: Makefile,v 1.6 2000/02/10 23:14:32 espie Exp $

DISTNAME=       adcomplain-3.49
CATEGORIES=     mail news

MAINTAINER=     ports@openbsd.org

MASTER_SITES=   http://www.rdrop.com/users/billmc/
DISTFILES=      adcomplain.pl.uu

NEED_VERSION=	1.191
WRKDIST=	${WRKDIR}
NO_CONFIGURE=   YES
NO_BUILD=       YES

do-extract:
	mkdir ${WRKSRC}
	cd ${WRKSRC}; /usr/bin/uudecode < ${FULLDISTDIR}/${DISTFILES}

do-install:
	cd ${WRKSRC}; \
	${INSTALL_SCRIPT} adcomplain.pl ${PREFIX}/bin/adcomplain

.include <bsd.port.mk>
