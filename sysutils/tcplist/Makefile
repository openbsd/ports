# $OpenBSD: Makefile,v 1.6 2000/02/12 06:30:04 turan Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=	tcplist-2.2
CATEGORIES=	sysutils net
MASTER_SITES=	ftp://ftp.cdf.toronto.edu/pub/jdd/tcplist/
EXTRACT_SUFX=	.shar
NEED_VERSION=	1.191

MAINTAINER=     ports@OpenBSD.ORG

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

RUN_DEPENDS=	lsof:${PORTSDIR}/sysutils/lsof

WRKDIST=	${WRKDIR}
EXTRACT_CMD=	cat
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS= | ${SH}

INSTALL_TARGET=	install install.man

.include <bsd.port.mk>
