# New ports collection makefile for:	transproxy
# Version required:		0.4
# Date created:			18-Jun-1998
# Whom:				Oleg Safiullin <form@vs.itam.nsc.ru>
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/06/18 06:22:53 form Exp $
#

DISTNAME=	transproxy-0.4
CATEGORIES=	www net
MASTER_SITES=	ftp://ftp.nlc.net.au/pub/linux/www/
EXTRACT_SUFX=	.tgz

MAINTAINER=	form@vs.itam.nsc.ru

ALL_TARGET=	tproxy

do-install:
	cd ${WRKSRC}; ${INSTALL_PROGRAM} ${WRKSRC}/tproxy ${PREFIX}/sbin

.include <bsd.port.mk>
