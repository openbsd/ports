# Makefile for:		isic
# Version required:	0.04
# Date created:		24 Jan 2000
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.6 2000/03/24 23:28:32 espie Exp $

DISTNAME=	isic-0.05

CATEGORIES=	security
NEED_VERSION=	 1.230

MASTER_SITES=	http://expert.cc.purdue.edu/~frantzen/

EXTRACT_SUFX=	.tgz

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a::net/libnet

NO_PATCH=	Yes

GNU_CONFIGURE=	Yes

.include <bsd.port.mk>
