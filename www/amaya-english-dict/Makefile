# $OpenBSD: Makefile,v 1.4 2000/03/23 19:01:12 turan Exp $

DISTNAME=		English
DIST_SUBDIR=		amaya
PKGNAME=		amaya-english-dict
CATEGORIES=     	www
NEED_VERSION=		1.223

MAINTAINER=		rohee@openbsd.org

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.w3.org/pub/amaya/ \
			ftp://ftp-eu.w3.org/pub/amaya/

RUN_DEPENDS=		${PREFIX}/bin/amaya:www/amaya

NO_PATCH=		Yes
NO_CONFIGURE=		Yes
NO_BUILD=		Yes

do-install:
	${INSTALL_DATA} ${WRKDIR}/Thot/dicopar/Eprinc.dic ${PREFIX}/Amaya/dicopar

.include <bsd.port.mk>
