# Makefile for:		dsniff
# Version required:	1.0
# Date created:		17 Dec 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.8 2000/04/09 17:38:00 espie Exp $

DISTNAME=	dsniff-1.5

CATEGORIES=	security
NEED_VERSION=	 1.230
FAKE=No

MAINTAINER=	dugsong@monkey.org

MASTER_SITES=	http://www.monkey.org/~dugsong/dsniff/

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a::net/libnet \
		${PREFIX}/lib/libnids.a::net/libnids

GNU_CONFIGURE=	Yes

NO_PATCH=	Yes

.include <bsd.port.mk>
