# $OpenBSD: Makefile,v 1.4 1999/09/27 13:31:25 brad Exp $

DISTNAME=	xchomp-pl1
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_BACKUP}

MAINTAINER=	angelos@openbsd.org

WRKSRC=		${WRKDIR}/xchomp
USE_IMAKE=	yes
NO_INSTALL_MANPAGES= yes

# Change -DFRAME_DELAY=40000 in patchfile/Imakefile value to adjust
# speed of play depending on X server.

.include <bsd.port.mk>
