# $OpenBSD: Makefile,v 1.2 1999/08/15 20:43:39 rohee Exp $

DISTNAME=		French
DIST_SUBDIR=		amaya
PKGNAME=		amaya-french-dict
CATEGORIES=     	www

MAINTAINER=		rohee@openbsd.org

MASTER_SITES=		ftp://ftp.w3.org/pub/amaya/ \
			ftp://ftp-eu.w3.org/pub/amaya/

RUN_DEPENDS=		${PREFIX}/bin/amaya:${PORTSDIR}/www/amaya

NO_PATCH=		yes
NO_CONFIGURE=		yes
NO_BUILD=		yes

do-install:
	${INSTALL_DATA} ${WRKDIR}/Thot/dicopar/Fprinc.dic ${PREFIX}/Amaya/dicopar

.include <bsd.port.mk>
