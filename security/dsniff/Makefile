# Makefile for:		dsniff
# Version required:	1.0
# Date created:		17 Dec 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.9 2000/04/18 10:08:23 turan Exp $

DISTNAME=	dsniff-1.5

CATEGORIES=	security
NEED_VERSION=	 1.230
FAKE=No

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.monkey.org/~dugsong/dsniff/

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a::net/libnet \
		${PREFIX}/lib/libnids.a::net/libnids

GNU_CONFIGURE=	Yes

NO_PATCH=	Yes

.include <bsd.port.mk>
