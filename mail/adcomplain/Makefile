# $OpenBSD: Makefile,v 1.14 2000/12/14 13:22:59 espie Exp $

DISTNAME=	adcomplain-3.52
CATEGORIES=	mail news
NEED_VERSION=	1.330
MASTER_SITES=	http://www.rdrop.com/users/billmc/
DISTFILES=	adcomplain.pl.uu

EXTRACT_CASES=	*.uu) uudecode ${FULLDISTDIR}/$$archive;;

HOMEPAGE=	http://www.rdrop.com/users/billmc/adcomplain.html

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes

WRKDIST=	${WRKDIR}

do-install:
	cd ${WRKSRC}; ${INSTALL_SCRIPT} adcomplain.pl ${PREFIX}/bin/adcomplain

.include <bsd.port.mk>
