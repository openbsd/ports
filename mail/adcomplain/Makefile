# $OpenBSD: Makefile,v 1.4 1999/10/30 22:09:17 angelos Exp $

BROKEN=		waiting for turans@ to verify

DISTNAME=       adcomplain-3.49
CATEGORIES=     mail news

MAINTAINER=     ports@openbsd.org

MASTER_SITES=   http://www.rdrop.com/users/billmc/
DISTFILES=      adcomplain.pl.uu

NO_WRKSUBDIR=	YES
NO_CONFIGURE=   YES
NO_BUILD=       YES

do-extract:
	cd ${WRKSRC}; /usr/bin/uudecode < ${FULLDISTDIR}/${DISTFILES}

do-install:
	cd ${WRKSRC}; \
	${INSTALL_SCRIPT} adcomplain.pl ${PREFIX}/bin/adcomplain

.include <bsd.port.mk>
