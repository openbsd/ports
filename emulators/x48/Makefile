# $OpenBSD: Makefile,v 1.2 1998/10/15 04:55:16 marc Exp $
#

DISTNAME=		x48-0.4.0
CATEGORIES=		emulators

MAINTAINER=		todd@OpenBSD.org

MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	system/emulators

USE_IMAKE=		yes
NO_INSTALL_MANPAGES=	yes

post-install:
	${MKDIR} ${PREFIX}/share/x48
	${CP} ${WRKSRC}/README ${PREFIX}/share/x48/README-x48
	${CP} ${WRKSRC}/doc/CARDS.doc ${WRKSRC}/doc/ROMDump.doc ${PREFIX}/share/x48

.include <bsd.port.mk>
