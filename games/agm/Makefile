# $OpenBSD: Makefile,v 1.2 1998/10/15 17:09:19 marc Exp $
#

DISTNAME=		agm-1.1
CATEGORIES=		games

BROKEN=			"newer version available"
NO_CDROM=		"NOFEE: Can not charge for distribution"

MAINTAINER=		angelos@openbsd.org

MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	games/amusements

WRKSRC=			${WRKDIR}

do-install:
	@ ${INSTALL_PROGRAM} ${WRKSRC}/agm ${PREFIX}/bin
	@ ${INSTALL_MAN} ${WRKSRC}/agm.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
