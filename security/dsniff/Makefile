# Makefile for:		dsniff
# Version required:	1.0
# Date created:		17 Dec 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.12 2000/06/16 23:06:11 espie Exp $

DISTNAME=	dsniff-2.1

CATEGORIES=	security
NEED_VERSION=	1.301

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.monkey.org/~dugsong/dsniff/

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a::net/libnet \
		${PREFIX}/lib/libnids.a::net/libnids

CONFIGURE_STYLE=	gnu

FAKE_FLAGS=	install_prefix=${WRKINST}

.include <bsd.port.mk>
