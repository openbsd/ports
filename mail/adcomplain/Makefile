# $OpenBSD: Makefile,v 1.17 2002/03/21 21:09:17 espie Exp $

COMMENT=	"complain about SPAM"

DISTNAME=	adcomplain-3.52
CATEGORIES=	mail news
NEED_VERSION=	1.515
MASTER_SITES=	http://www.rdrop.com/users/billmc/
DISTFILES=	adcomplain.pl.uu

EXTRACT_CASES=	*.uu) uudecode ${FULLDISTDIR}/$$archive;;

HOMEPAGE=	http://www.rdrop.com/users/billmc/adcomplain.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes

WRKDIST=	${WRKDIR}

do-install:
	cd ${WRKSRC}; ${INSTALL_SCRIPT} adcomplain.pl ${PREFIX}/bin/adcomplain

.include <bsd.port.mk>
