# Makefile for:		isic
# Version required:	0.04
# Date created:		24 Jan 2000
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.3 2000/02/23 22:56:02 dugsong Exp $

DISTNAME=	isic-0.05

CATEGORIES=	security

MASTER_SITES=	http://expert.cc.purdue.edu/~frantzen/

NEED_VERSION=	1.191

EXTRACT_SUFX=	.tgz

MAINTAINER=	dugsong@monkey.org

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a:${PORTSDIR}/net/libnet

NO_PATCH=	yes

GNU_CONFIGURE=	yes

.include <bsd.port.mk>
