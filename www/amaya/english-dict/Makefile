# $OpenBSD: Makefile,v 1.1.1.1 2000/04/11 20:08:47 rohee Exp $
# Original from: Bruno Rohee <rohee@OpenBSD.ORG>
#
# Many variables moved to ../Makefile.inc
#
DISTNAME=		English
PKGNAME=		amaya-english-dict
NEED_VERSION=		1.223

RUN_DEPENDS=		${PREFIX}/bin/amaya:www/amaya/browser

NO_PATCH=		Yes
NO_CONFIGURE=		Yes
NO_BUILD=		Yes

do-install:
	${INSTALL_DATA} ${WRKDIR}/Thot/dicopar/Eprinc.dic ${PREFIX}/Amaya/dicopar

.include <bsd.port.mk>
