# Makefile for:		dsniff
# Version required:	1.0
# Date created:		17 Dec 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.5 2000/02/17 03:59:38 dugsong Exp $

DISTNAME=	dsniff-1.5

CATEGORIES=	security

MAINTAINER=	dugsong@monkey.org

MASTER_SITES=	http://www.monkey.org/~dugsong/dsniff/

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a:${PORTSDIR}/net/libnet \
		${PREFIX}/lib/libnids.a:${PORTSDIR}/net/libnids

GNU_CONFIGURE=	yes

NO_PATCH=	yes

.include <bsd.port.mk>
