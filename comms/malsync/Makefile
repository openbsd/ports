# $OpenBSD: Makefile,v 1.2 1999/06/11 19:14:44 dugsong Exp $

PKGNAME=	malsync-1.6
DISTNAME=	malsync_1_6

CATEGORIES=	comms

DISTFILES=	malsync_1_6.source.tar.gz \
		mal-0_7_tar.gz

MAINTAINER=	evan.cordes@UMICH.EDU

MASTER_SITES=	ftp://ryeham.ee.ryerson.ca/pub/PalmOS/AvantGo/ \
		http://corp.avantgo.com/mal/source/

LIB_DEPENDS=	pilot-link:${PORTSDIR}/comms/pilot-link

NO_WRKSUBDIR=	yes

NO_CONFIGURE=	yes

ALL_TARGET=	malsync

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/malsync ${PREFIX}/bin

.include <bsd.port.mk>

