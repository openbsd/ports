# $OpenBSD: Makefile,v 1.4 2001/04/19 10:41:20 wilfried Exp $
# Original from: Bruno Rohee <rohee@OpenBSD.ORG>
#
# Many variables moved to ../Makefile.inc
#
DISTNAME=		French
PKGNAME=		amaya-french-dict-19961217
NEED_VERSION=		1.223

RUN_DEPENDS=		${PREFIX}/bin/amaya:www/amaya/browser

NO_BUILD=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/Amaya/dicopar
	${INSTALL_DATA} ${WRKDIR}/Fprinc.dic ${PREFIX}/Amaya/dicopar

.include <bsd.port.mk>
