# $OpenBSD: Makefile,v 1.7 2001/09/28 06:02:15 pvalchev Exp $
# Original from: Bruno Rohee <rohee@OpenBSD.ORG>
#
# Many variables moved to ../Makefile.inc
#

COMMENT=		"test-bed browser/authoring tool of the W3C"

AMAYA_VERSION=		3.2.1
DISTNAME=		amaya-src-${AMAYA_VERSION}
PKGNAME=		amaya-${AMAYA_VERSION}

NEED_VERSION=		1.402

USE_MOTIF=		any

WRKSRC=			${WRKDIR}/Amaya
WRKBUILD=		${WRKSRC}/obj

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu dest
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/../libwww/config
CONFIGURE_SCRIPT=	../configure

pre-install:
	${STRIP} ${WRKBUILD}/bin/amaya
	${STRIP} ${WRKBUILD}/bin/print

post-install:
	cd ${PREFIX}/bin; rm amaya; ln -s ${TRUEPREFIX}/Amaya/applis/bin/amaya

.include <bsd.port.mk>
