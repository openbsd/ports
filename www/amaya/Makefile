# $OpenBSD: Makefile,v 1.8 2000/03/25 12:40:56 rohee Exp $
# Original from: Bruno Rohee <rohee@OpenBSD.ORG>
#
AMAYA_VERSION=		2.4

DISTNAME=		amaya-src-${AMAYA_VERSION}
DIST_SUBDIR=		amaya
PKGNAME=		amaya-${AMAYA_VERSION}
CATEGORIES=		www
EXTRACT_SUFX=		.tgz

MAINTAINER=		rohee@OpenBSD.ORG

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.w3.org/Amaya/Distribution/ \
			ftp://ftp.w3.org/pub/amaya/ \
			ftp://mirror.aarnet.edu.au/pub/amaya

NEED_VERSION=		1.225

USE_MOTIF=		Yes

WRKSRC=			${WRKDIR}/Amaya
WRKBUILD=		${WRKSRC}/obj

GNU_CONFIGURE=		Yes
USE_GMAKE=		Yes

do-configure:
	mkdir -p ${WRKBUILD} && cd ${WRKBUILD} && ../configure ${CONFIGURE_ARGS}

pre-install:
	${STRIP} ${WRKBUILD}/bin/amaya
	${STRIP} ${WRKBUILD}/bin/print

.include <bsd.port.mk>



