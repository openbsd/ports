# $OpenBSD: Makefile,v 1.4 1999/01/14 01:44:39 angelos Exp $
#

DISTNAME=		agm-1.3.1
CATEGORIES=		games

#BROKEN=		"newer version available"
NO_CDROM=		"NOFEE: Can not charge for distribution"

MAINTAINER=		angelos@openbsd.org

MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	games/amusements

do-install:
	@ ${INSTALL_PROGRAM} ${WRKSRC}/agm ${PREFIX}/bin
	@ ${INSTALL_MAN} ${WRKSRC}/agm.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
