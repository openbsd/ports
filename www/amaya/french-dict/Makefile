# $OpenBSD: Makefile,v 1.5 2001/05/06 04:22:46 lebel Exp $
# Original from: Bruno Rohee <rohee@OpenBSD.ORG>
#
# Many variables moved to ../Makefile.inc
#

COMMENT=	"French dictionary for the Amaya browser/page composer"

PKGNAME=		amaya-french-dict-19961217
DISTNAME=		French
NEED_VERSION=		1.402

RUN_DEPENDS=		${PREFIX}/bin/amaya:www/amaya/browser

NO_BUILD=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/Amaya/dicopar
	${INSTALL_DATA} ${WRKDIR}/Fprinc.dic ${PREFIX}/Amaya/dicopar

.include <bsd.port.mk>
