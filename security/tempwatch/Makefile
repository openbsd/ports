# Makefile for:		tempwatch
# Version required:	1.0
# Date created:		25 Nov 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.7 2000/10/22 14:03:48 espie Exp $

PKGNAME=	tempwatch-1.0

CATEGORIES=	security
NEED_VERSION=	1.191

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	Yes

DIST_SUBDIR=	tempwatch
DISTFILES=	l0pht-watch${EXTRACT_SUFX} watch.txt
EXTRACT_ONLY=	l0pht-watch${EXTRACT_SUFX}

MASTER_SITES=	http://www.l0pht.com/advisories/

WRKDIST=	${WRKDIR}/temp-watch

ALL_TARGET=	OpenBSD

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/temp-watch ${PREFIX}/sbin/tempwatch
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tempwatch
		${INSTALL_DATA} ${FULLDISTDIR}/watch.txt ${PREFIX}/share/doc/tempwatch

.include <bsd.port.mk>
