# $OpenBSD: Makefile,v 1.5 2001/04/18 15:01:22 espie Exp $
# Original from: Bruno Rohee <rohee@OpenBSD.ORG>
#
# Many variables moved to ../Makefile.inc
#
AMAYA_VERSION=		3.2.1

DISTNAME=		amaya-src-${AMAYA_VERSION}
PKGNAME=		amaya-${AMAYA_VERSION}

NEED_VERSION=		1.400

USE_MOTIF=		any

WRKSRC=			${WRKDIR}/Amaya
WRKBUILD=		${WRKSRC}/obj

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu dest
CONFIGURE_SCRIPT=	../configure

pre-install:
	${STRIP} ${WRKBUILD}/bin/amaya
	${STRIP} ${WRKBUILD}/bin/print

post-install:
	cd ${PREFIX}/bin; rm amaya; ln -s ${TRUEPREFIX}/Amaya/applis/bin/amaya

.include <bsd.port.mk>
