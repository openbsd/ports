# $OpenBSD: Makefile,v 1.2 1999/02/19 05:55:46 marc Exp $
#

DISTNAME=       adcomplain-3.49
CATEGORIES=     mail news

MAINTAINER=     angelos@openbsd.org

MASTER_SITES=   http://www.rdrop.com/users/billmc/
DISTFILES=      adcomplain.pl.uu
EXTRACT_CMD=    /usr/bin/uudecode
EXTRACT_BEFORE_ARGS=    <

NO_WRKSUBDIR=	YES
NO_CONFIGURE=   YES
NO_BUILD=       YES

do-install:
	cd ${WRKSRC}; \
	${INSTALL_SCRIPT} adcomplain.pl ${PREFIX}/bin/adcomplain

.include <bsd.port.mk>
