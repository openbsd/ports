# $OpenBSD: Makefile,v 1.15 2001/05/06 01:45:53 lebel Exp $

COMMENT=	"complain about SPAM"

DISTNAME=	adcomplain-3.52
CATEGORIES=	mail news
NEED_VERSION=	1.402
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
