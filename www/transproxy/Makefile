# New ports collection makefile for:	transproxy
# Version required:		0.4
# Date created:			18-Jun-1998
# Whom:				Oleg Safiullin <form@OpenBSD.ORG>
#
# $OpenBSD: Makefile,v 1.2 1998/10/20 08:39:49 form Exp $
#

DISTNAME=	transproxy-0.4
CATEGORIES=	www net
MASTER_SITES=	ftp://ftp.nlc.net.au/pub/linux/www/
EXTRACT_SUFX=	.tgz

MAINTAINER=	form@OpenBSD.ORG

ALL_TARGET=	tproxy

do-install:
	cd ${WRKSRC}; ${INSTALL_PROGRAM} ${WRKSRC}/tproxy ${PREFIX}/sbin

.include <bsd.port.mk>
