# Makefile for:		isic
# Version required:	0.04
# Date created:		24 Jan 2000
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.2 2000/02/11 00:37:36 espie Exp $

DISTNAME=	isic-0.04

CATEGORIES=	security

MASTER_SITES=	http://expert.cc.purdue.edu/~frantzen/
NEED_VERSION=	1.191

EXTRACT_SUFX=	.tgz

MAINTAINER=	dugsong@monkey.org

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a:${PORTSDIR}/net/libnet

WRKDIST=	${WRKDIR}/isic

USE_AUTOCONF=	yes

.include <bsd.port.mk>
