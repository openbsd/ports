# $OpenBSD: Makefile,v 1.10 2000/04/09 17:36:51 espie Exp $

DISTNAME=       adcomplain-3.49
CATEGORIES=     mail news
NEED_VERSION=	1.191
FAKE=No

MAINTAINER=     ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=   http://www.rdrop.com/users/billmc/
DISTFILES=      adcomplain.pl.uu

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
