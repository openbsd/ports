# $OpenBSD: Makefile,v 1.7 2000/10/22 14:03:11 espie Exp $
#

DISTNAME=		x48-0.4.0
CATEGORIES=		emulators

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	system/emulators

FAKE=			Yes
USE_IMAKE=		Yes
NO_INSTALL_MANPAGES=	Yes

post-install:
	mkdir -p ${PREFIX}/share/x48
	cp ${WRKSRC}/README ${PREFIX}/share/x48/README-x48
	cp ${WRKSRC}/doc/CARDS.doc ${WRKSRC}/doc/ROMDump.doc ${PREFIX}/share/x48

.include <bsd.port.mk>
