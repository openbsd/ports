# Makefile for:		isic
# Version required:	0.04
# Date created:		24 Jan 2000
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.1.1.1 2000/01/24 19:58:17 dugsong Exp $

DISTNAME=	isic-0.04

CATEGORIES=	security

MASTER_SITES=	http://expert.cc.purdue.edu/~frantzen/

EXTRACT_SUFX=	.tgz

MAINTAINER=	dugsong@monkey.org

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a:${PORTSDIR}/net/libnet

WRKSRC=		${WRKDIR}/isic

USE_AUTOCONF=	yes

.include <bsd.port.mk>
