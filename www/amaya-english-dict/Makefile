# $OpenBSD: Makefile,v 1.1.1.1 1999/03/29 18:22:00 rohee Exp $

DISTNAME=		English
DIST_SUBDIR=		amaya
PKGNAME=		amaya-english-dict
CATEGORIES=     	www

MAINTAINER=		rohee@openbsd.org

MASTER_SITES=		ftp://ftp.w3.org/pub/amaya/ \
			ftp://ftp-eu.w3.org/pub/amaya/

RUN_DEPENDS=		${PREFIX}/bin/amaya:${PORTSDIR}/www/amaya

NO_PATCH=		yes
NO_CONFIGURE=		yes
NO_BUILD=		yes

do-install:
	@${MKDIR} ${PREFIX}/Thot/dicopar
	${INSTALL_DATA} ${WRKDIR}/Thot/dicopar/Eprinc.dic ${PREFIX}/Thot/dicopar

.include <bsd.port.mk>
