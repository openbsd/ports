# $OpenBSD: Makefile,v 1.3 1999/10/29 10:42:32 turan Exp $

BROKEN=		checksum mismatch

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
