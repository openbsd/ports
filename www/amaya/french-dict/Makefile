# $OpenBSD: Makefile,v 1.3 2000/06/16 23:06:16 espie Exp $
# Original from: Bruno Rohee <rohee@OpenBSD.ORG>
#
# Many variables moved to ../Makefile.inc
#
DISTNAME=		French
PKGNAME=		amaya-french-dict
NEED_VERSION=		1.223

RUN_DEPENDS=		${PREFIX}/bin/amaya:www/amaya/browser

NO_BUILD=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/Amaya/dicopar
	${INSTALL_DATA} ${WRKDIR}/Fprinc.dic ${PREFIX}/Amaya/dicopar

.include <bsd.port.mk>
