# Makefile for:		dsniff
# Version required:	1.0
# Date created:		17 Dec 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.1.1.1 1999/12/20 23:00:58 dugsong Exp $

DISTNAME=	dsniff-1.1

CATEGORIES=	security

MAINTAINER=	dugsong@monkey.org

MASTER_SITES=	http://www.monkey.org/~dugsong/dsniff/

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a:${PORTSDIR}/net/libnet \
		${PREFIX}/lib/libnids.a:${PORTSDIR}/net/libnids

NO_CONFIGURE=	yes

.include <bsd.port.mk>
