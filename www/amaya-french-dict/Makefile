# $OpenBSD: Makefile,v 1.3 2000/03/05 18:30:45 espie Exp $

DISTNAME=		French
DIST_SUBDIR=		amaya
PKGNAME=		amaya-french-dict
CATEGORIES=     	www
NEED_VERSION=		1.223

MAINTAINER=		rohee@openbsd.org

MASTER_SITES=		ftp://ftp.w3.org/pub/amaya/ \
			ftp://ftp-eu.w3.org/pub/amaya/

RUN_DEPENDS=		${PREFIX}/bin/amaya:www/amaya

NO_PATCH=		Yes
NO_CONFIGURE=		Yes
NO_BUILD=		Yes

do-install:
	${INSTALL_DATA} ${WRKDIR}/Thot/dicopar/Fprinc.dic ${PREFIX}/Amaya/dicopar

.include <bsd.port.mk>
