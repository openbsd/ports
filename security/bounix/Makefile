# OpenBSD makefile for:	bounix
# Version required:	1.21
# Date created:		1998-Jan-16
# Whom:			dugsong@OpenBSD.ORG
#
# $OpenBSD: Makefile,v 1.9 2000/10/22 14:03:43 espie Exp $
#

PKGNAME=	bounix-1.21
DISTNAME=	bo121unix

CATEGORIES=     security
NEED_VERSION=	1.322

MASTER_SITES=	http://orifice.rotten.com/cDc/ \
		http://www.cultdeadcow.com/tools/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

WRKDIST=		${WRKDIR}/bo

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bounix ${PREFIX}/bin

.include <bsd.port.mk>
