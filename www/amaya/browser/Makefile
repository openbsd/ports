# $OpenBSD: Makefile,v 1.4 2001/03/17 12:23:44 wilfried Exp $
# Original from: Bruno Rohee <rohee@OpenBSD.ORG>
#
# Many variables moved to ../Makefile.inc
#
AMAYA_VERSION=		3.2.1

DISTNAME=		amaya-src-${AMAYA_VERSION}
PKGNAME=		amaya-${AMAYA_VERSION}

NEED_VERSION=		1.319

USE_MOTIF=		Yes

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
