# $OpenBSD: Makefile,v 1.13 2000/10/22 14:02:59 espie Exp $

PKGNAME=	malsync-1.6
DISTNAME=	malsync_1_6

CATEGORIES=	comms
NEED_VERSION=	 1.230

DISTFILES=	malsync_1_6.source.tar.gz \
		mal-0_7_tar.gz:0

MAINTAINER=	Evan Cordes <evan.cordes@UMICH.EDU>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ryeham.ee.ryerson.ca/pub/PalmOS/AvantGo/ 
MASTER_SITES0=	http://corp.avantgo.com/mal/source/


LIB_DEPENDS=	pisock.3::comms/pilot-link

WRKDIST=	${WRKDIR}

ALL_TARGET=	malsync

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/malsync ${PREFIX}/bin

.include <bsd.port.mk>

