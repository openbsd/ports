# $OpenBSD: Makefile,v 1.14 2001/10/28 13:05:46 espie Exp $
#

COMMENT=	"graphical multi-player real-time strategy game for X11"

DISTNAME=       xblast-2.6.beta
PKGNAME=	xblast-2.6b
CATEGORIES=	games
NEED_VERSION=	1.402

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# after end of beta test period:
# MASTER_SITES= ${MASTER_SITE_XCONTRIB}
# MASTER_SITE_SUBDIR= games/multiplayer
# but right now only available from:
MASTER_SITES=   http://www.ikp.uni-koeln.de/~vogel/archive/

WRKDIST=	${WRKDIR}/XBlast-2.6.beta
CONFIGURE_STYLE=imake

.include <bsd.port.mk>
