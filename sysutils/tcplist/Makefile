# $OpenBSD: Makefile,v 1.3 1999/04/06 19:39:01 rohee Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=	tcplist-2.2
CATEGORIES=	sysutils net
MASTER_SITES=	ftp://ftp.cdf.toronto.edu/pub/jdd/tcplist/
EXTRACT_SUFX=	.shar

MAINTAINER=     ports@OpenBSD.ORG

RUN_DEPENDS=	lsof:${PORTSDIR}/sysutils/lsof

EXTRACT_CMD=	cat
EXTRACT_BEFORE_ARGS=
EXTRACT_AFTER_ARGS=	|sh
NO_WRKSUBDIR=	yes
INSTALL_TARGET=	install install.man
MAN1=		tcplist.1

.include <bsd.port.mk>
