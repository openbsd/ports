# $OpenBSD: Makefile,v 1.12 2000/06/26 20:05:18 brad Exp $

DISTNAME=	adcomplain-3.49
CATEGORIES=	mail news
NEED_VERSION=	1.301
MASTER_SITES=	http://www.rdrop.com/users/billmc/
DISTFILES=	adcomplain.pl.uu

HOMEPAGE=	http://www.rdrop.com/users/billmc/adcomplain.html

EXTRACT_CMD=	uudecode
EXTRACT_BEFORE_ARGS=	#
EXTRACT_AFTER_ARGS=	#

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
