# $OpenBSD: Makefile,v 1.3 1998/10/18 05:02:07 marc Exp $
#

DISTNAME=		agm-1.1
CATEGORIES=		games

#BROKEN=		"newer version available"
NO_CDROM=		"NOFEE: Can not charge for distribution"

MAINTAINER=		angelos@openbsd.org

MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	games/amusements

WRKSRC=			${WRKDIR}

do-install:
	@ ${INSTALL_PROGRAM} ${WRKSRC}/agm ${PREFIX}/bin
	@ ${INSTALL_MAN} ${WRKSRC}/agm.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
