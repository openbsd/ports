# $OpenBSD: Makefile,v 1.3 2000/02/11 01:10:02 espie Exp $
#

DISTNAME=		x48-0.4.0
CATEGORIES=		emulators

MAINTAINER=		todd@OpenBSD.org

MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	system/emulators

USE_IMAKE=		yes
NO_INSTALL_MANPAGES=	yes

post-install:
	mkdir -p ${PREFIX}/share/x48
	cp ${WRKSRC}/README ${PREFIX}/share/x48/README-x48
	cp ${WRKSRC}/doc/CARDS.doc ${WRKSRC}/doc/ROMDump.doc ${PREFIX}/share/x48

.include <bsd.port.mk>
