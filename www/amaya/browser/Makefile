# $OpenBSD: Makefile,v 1.1.1.1 2000/04/11 20:08:46 rohee Exp $
# Original from: Bruno Rohee <rohee@OpenBSD.ORG>
#
# Many variables moved to ../Makefile.inc
#
AMAYA_VERSION=		2.4

DISTNAME=		amaya-src-${AMAYA_VERSION}
PKGNAME=		amaya-${AMAYA_VERSION}

NEED_VERSION=		1.225

USE_MOTIF=		Yes

WRKSRC=			${WRKDIR}/Amaya
WRKBUILD=		${WRKSRC}/obj

GNU_CONFIGURE=		Yes
USE_GMAKE=		Yes

do-configure:
	mkdir -p ${WRKBUILD} && cd ${WRKBUILD} && \
	../configure ${CONFIGURE_ARGS}

pre-install:
	${STRIP} ${WRKBUILD}/bin/amaya
	${STRIP} ${WRKBUILD}/bin/print

.include <bsd.port.mk>
