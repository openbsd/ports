# OpenBSD makefile for:	bounix
# Version required:	1.21
# Date created:		1998-Jan-16
# Whom:			dugsong@OpenBSD.ORG
#
# $OpenBSD: Makefile,v 1.6 2000/04/09 17:37:56 espie Exp $
#

PKGNAME=		bounix-1.21
DISTNAME=		bo121unix

CATEGORIES=     	security
NEED_VERSION=	1.191
FAKE=No

MASTER_SITES=		http://www.ennui.net/~crioux/ \
			http://orifice.rotten.com/cDc/ \
			http://www.cultdeadcow.com/tools/

MAINTAINER=		dugsong@monkey.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

GNU_CONFIGURE=		yes

WRKDIST=		${WRKDIR}/bo

.include <bsd.port.mk>
