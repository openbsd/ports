# $OpenBSD: Makefile,v 1.5 2000/02/11 00:37:24 espie Exp $

DISTNAME=	xchomp-pl1
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_BACKUP}
NEED_VERSION=	1.191

MAINTAINER=	angelos@openbsd.org

WRKDIST=	${WRKDIR}/xchomp
USE_IMAKE=	yes
NO_INSTALL_MANPAGES= yes

# Change -DFRAME_DELAY=40000 in patchfile/Imakefile value to adjust
# speed of play depending on X server.

.include <bsd.port.mk>
