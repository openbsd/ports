# $OpenBSD: Makefile,v 1.4 2001/04/19 10:41:19 wilfried Exp $
# Original from: Bruno Rohee <rohee@OpenBSD.ORG>
#
# Many variables moved to ../Makefile.inc
#
DISTNAME=		English
PKGNAME=		amaya-english-dict-20000321
NEED_VERSION=		1.223

RUN_DEPENDS=		${PREFIX}/bin/amaya:www/amaya/browser

NO_BUILD=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/Amaya/dicopar
	${INSTALL_DATA} ${WRKDIR}/Eprinc.dic ${PREFIX}/Amaya/dicopar

.include <bsd.port.mk>
