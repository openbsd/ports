# $OpenBSD: Makefile,v 1.10 2000/04/09 17:36:08 espie Exp $

PKGNAME=	malsync-1.6
DISTNAME=	malsync_1_6

CATEGORIES=	comms
NEED_VERSION=	 1.230
FAKE=No

DISTFILES=	malsync_1_6.source.tar.gz \
		mal-0_7_tar.gz:0

MAINTAINER=	evan.cordes@UMICH.EDU

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ryeham.ee.ryerson.ca/pub/PalmOS/AvantGo/ 
MASTER_SITES0=	http://corp.avantgo.com/mal/source/


LIB_DEPENDS=	pisock.3::comms/pilot-link

WRKDIST=	${WRKDIR}

NO_CONFIGURE=	yes

ALL_TARGET=	malsync

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/malsync ${PREFIX}/bin

.include <bsd.port.mk>

