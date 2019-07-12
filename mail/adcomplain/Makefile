# $OpenBSD: Makefile,v 1.22 2019/07/12 20:47:24 sthen Exp $

COMMENT=	complain about SPAM

DISTNAME=	adcomplain-3.52
CATEGORIES=	mail news

MASTER_SITES=	http://www.rdrop.com/users/billmc/
DISTFILES=	adcomplain.pl.uu

EXTRACT_CASES=	*.uu) uudecode ${FULLDISTDIR}/$$archive;;

HOMEPAGE=	http://www.rdrop.com/users/billmc/adcomplain.html

PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

WRKDIST=	${WRKDIR}

do-install:
	cd ${WRKSRC}; ${INSTALL_SCRIPT} adcomplain.pl ${PREFIX}/bin/adcomplain

.include <bsd.port.mk>
