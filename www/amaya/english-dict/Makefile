# $OpenBSD: Makefile,v 1.5 2001/05/06 04:22:45 lebel Exp $
# Original from: Bruno Rohee <rohee@OpenBSD.ORG>
#
# Many variables moved to ../Makefile.inc
#

COMMENT=	"English dictionary for the Amaya browser/page composer"

PKGNAME=		amaya-english-dict-20000321
DISTNAME=		English
NEED_VERSION=		1.402

RUN_DEPENDS=		${PREFIX}/bin/amaya:www/amaya/browser

NO_BUILD=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/Amaya/dicopar
	${INSTALL_DATA} ${WRKDIR}/Eprinc.dic ${PREFIX}/Amaya/dicopar

.include <bsd.port.mk>
