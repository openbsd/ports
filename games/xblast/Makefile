# $OpenBSD: Makefile,v 1.7 2000/03/24 22:11:42 espie Exp $
#

DISTNAME=       xblast-2.6.beta
PKGNAME=	xblast-2.6b
CATEGORIES=	games
NEED_VERSION=	1.191

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

# after end of beta test period:
# MASTER_SITES= ${MASTER_SITE_XCONTRIB}
# MASTER_SITE_SUBDIR= games/multiplayer
# but right now only available from:
MASTER_SITES=   http://www.ikp.uni-koeln.de/~vogel/archive/

WRKDIST=	${WRKDIR}/XBlast-2.6.beta
USE_IMAKE=      yes

.include <bsd.port.mk>
