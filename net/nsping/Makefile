# Makefile for:		nsping
# Version required:	0.8
# Date created:		12 Nov 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.8 2000/10/22 14:03:36 espie Exp $

PKGNAME=	nsping-0.8

CATEGORIES=	net
NEED_VERSION=	1.191

DISTNAME=	nsping

MASTER_SITES=	http://www.enteract.com/~tqbf/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}/${PKGNAME}

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/nsping ${PREFIX}/sbin
		${INSTALL_DATA} ${WRKSRC}/nsping.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
