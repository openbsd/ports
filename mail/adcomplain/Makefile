# $OpenBSD: Makefile,v 1.5 1999/11/14 21:36:11 turan Exp $

DISTNAME=       adcomplain-3.49
CATEGORIES=     mail news

MAINTAINER=     ports@openbsd.org

MASTER_SITES=   http://www.rdrop.com/users/billmc/
DISTFILES=      adcomplain.pl.uu

NO_WRKSUBDIR=	YES
NO_CONFIGURE=   YES
NO_BUILD=       YES

do-extract:
	mkdir ${WRKSRC}
	cd ${WRKSRC}; /usr/bin/uudecode < ${FULLDISTDIR}/${DISTFILES}

do-install:
	cd ${WRKSRC}; \
	${INSTALL_SCRIPT} adcomplain.pl ${PREFIX}/bin/adcomplain

.include <bsd.port.mk>
