# Makefile for:		dsniff
# Version required:	1.0
# Date created:		17 Dec 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.10 2000/05/17 16:32:08 dugsong Exp $

DISTNAME=	dsniff-2.0

CATEGORIES=	security

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

FAKE=		Yes
FAKE_FLAGS=	install_prefix=${WRKINST}

.include <bsd.port.mk>
