# $OpenBSD: Makefile,v 1.7 2000/03/05 18:30:23 espie Exp $

PKGNAME=	malsync-1.6
DISTNAME=	malsync_1_6

CATEGORIES=	comms
NEED_VERSION=	1.223

DISTFILES=	malsync_1_6.source.tar.gz \
		mal-0_7_tar.gz:0

MAINTAINER=	evan.cordes@UMICH.EDU

MASTER_SITES=	ftp://ryeham.ee.ryerson.ca/pub/PalmOS/AvantGo/ 
MASTER_SITES0=	http://corp.avantgo.com/mal/source/


LIB_DEPENDS=	pisock.3:comms/pilot-link

WRKDIST=	${WRKDIR}

NO_CONFIGURE=	yes

ALL_TARGET=	malsync

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/malsync ${PREFIX}/bin

.include <bsd.port.mk>

