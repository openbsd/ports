# $OpenBSD: Makefile,v 1.4 1999/06/03 01:28:08 brad Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=	tcplist-2.2
CATEGORIES=	sysutils net
MASTER_SITES=	ftp://ftp.cdf.toronto.edu/pub/jdd/tcplist/
EXTRACT_SUFX=	.shar

MAINTAINER=     ports@OpenBSD.ORG

RUN_DEPENDS=	lsof:${PORTSDIR}/sysutils/lsof

NO_WRKSUBDIR=	yes
EXTRACT_CMD=	${CAT}
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS= | ${SH}

INSTALL_TARGET=	install install.man

.include <bsd.port.mk>
