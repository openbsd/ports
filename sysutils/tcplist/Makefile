# $OpenBSD: Makefile,v 1.5 2000/02/10 23:14:36 espie Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=	tcplist-2.2
CATEGORIES=	sysutils net
MASTER_SITES=	ftp://ftp.cdf.toronto.edu/pub/jdd/tcplist/
EXTRACT_SUFX=	.shar
NEED_VERSION=	1.191

MAINTAINER=     ports@OpenBSD.ORG

RUN_DEPENDS=	lsof:${PORTSDIR}/sysutils/lsof

WRKDIST=	${WRKDIR}
EXTRACT_CMD=	cat
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS= | ${SH}

INSTALL_TARGET=	install install.man

.include <bsd.port.mk>
