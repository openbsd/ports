# Makefile for:		nsping
# Version required:	0.8
# Date created:		12 Nov 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.6 2000/04/21 16:05:40 kevlo Exp $

PKGNAME=	nsping-0.8

CATEGORIES=	net
NEED_VERSION=	1.191

DISTNAME=	nsping

MASTER_SITES=	http://www.enteract.com/~tqbf/

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}/${PKGNAME}

NO_CONFIGURE=	Yes
FAKE=		Yes

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/nsping ${PREFIX}/sbin
		${INSTALL_DATA} ${WRKSRC}/nsping.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
