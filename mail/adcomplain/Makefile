# $OpenBSD: Makefile,v 1.7 2000/02/12 08:02:23 turan Exp $

DISTNAME=       adcomplain-3.49
CATEGORIES=     mail news

MAINTAINER=     ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

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
