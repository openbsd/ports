# OpenBSD makefile for:	bounix
# Version required:	1.21
# Date created:		1998-Jan-16
# Whom:			dugsong@OpenBSD.ORG
#
# $OpenBSD: Makefile,v 1.7 2000/04/30 09:20:10 kevlo Exp $
#

PKGNAME=		bounix-1.21
DISTNAME=		bo121unix

CATEGORIES=     	security
NEED_VERSION=	1.191

MASTER_SITES=		http://www.ennui.net/~crioux/ \
			http://orifice.rotten.com/cDc/ \
			http://www.cultdeadcow.com/tools/

MAINTAINER=		dugsong@monkey.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=			Yes

GNU_CONFIGURE=		Yes

WRKDIST=		${WRKDIR}/bo

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bounix ${PREFIX}/bin

.include <bsd.port.mk>
