# $OpenBSD: Makefile,v 1.3 1999/04/09 04:11:59 brad Exp $

DISTNAME=	transproxy-0.4
CATEGORIES=	www net
MASTER_SITES=	ftp://ftp.nlc.net.au/pub/linux/www/
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@openbsd.org

ALL_TARGET=	tproxy

do-install:
	cd ${WRKSRC}; ${INSTALL_PROGRAM} ${WRKSRC}/tproxy ${PREFIX}/sbin

.include <bsd.port.mk>
