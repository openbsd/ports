# $OpenBSD: Makefile,v 1.4 2000/02/12 08:02:17 turan Exp $
#

DISTNAME=		x48-0.4.0
CATEGORIES=		emulators

MAINTAINER=		todd@OpenBSD.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	system/emulators

USE_IMAKE=		yes
NO_INSTALL_MANPAGES=	yes

post-install:
	mkdir -p ${PREFIX}/share/x48
	cp ${WRKSRC}/README ${PREFIX}/share/x48/README-x48
	cp ${WRKSRC}/doc/CARDS.doc ${WRKSRC}/doc/ROMDump.doc ${PREFIX}/share/x48

.include <bsd.port.mk>
