# $OpenBSD: Makefile,v 1.2 2000/04/11 20:47:23 rohee Exp $
# Original from: Bruno Rohee <rohee@OpenBSD.ORG>
#
# Many variables moved to ../Makefile.inc
#
DISTNAME=		French
PKGNAME=		amaya-french-dict
NEED_VERSION=		1.223

RUN_DEPENDS=		${PREFIX}/bin/amaya:www/amaya/browser

NO_PATCH=		Yes
NO_CONFIGURE=		Yes
NO_BUILD=		Yes

FAKE=			Yes	

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/Amaya/dicopar
	${INSTALL_DATA} ${WRKDIR}/Fprinc.dic ${PREFIX}/Amaya/dicopar

.include <bsd.port.mk>
