# OpenBSD makefile for: x48
# Version required:     0.4.0   
# Date created:         19 November 1997
# Whom:                 todd@OpenBSD.org
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/11/30 15:07:56 todd Exp $
#

DISTNAME=	x48-0.4.0
CATEGORIES=	emulators
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	system/emulators

MAINTAINER=	todd@OpenBSD.org

USE_IMAKE=	yes
NO_INSTALL_MANPAGES=	yes

post-install:
	${MKDIR} ${PREFIX}/share/x48
	${CP} ${WRKSRC}/README ${PREFIX}/share/x48/README-x48
	${CP} ${WRKSRC}/doc/CARDS.doc ${WRKSRC}/doc/ROMDump.doc ${PREFIX}/share/x48

.include <bsd.port.mk>
