# Makefile for:		isic
# Version required:	0.04
# Date created:		24 Jan 2000
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.5 2000/03/23 04:22:20 turan Exp $

DISTNAME=	isic-0.05

CATEGORIES=	security
NEED_VERSION=	1.223

MASTER_SITES=	http://expert.cc.purdue.edu/~frantzen/

EXTRACT_SUFX=	.tgz

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a:net/libnet

NO_PATCH=	Yes

GNU_CONFIGURE=	Yes

.include <bsd.port.mk>
