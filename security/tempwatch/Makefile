# Makefile for:		tempwatch
# Version required:	1.0
# Date created:		25 Nov 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.5 2000/04/09 17:38:14 espie Exp $

PKGNAME=	tempwatch-1.0

CATEGORIES=	security
NEED_VERSION=	1.191
FAKE=No

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	Yes

DIST_SUBDIR=	tempwatch
DISTFILES=	l0pht-watch${EXTRACT_SUFX} watch.txt
EXTRACT_ONLY=	l0pht-watch${EXTRACT_SUFX}

MASTER_SITES=	http://www.l0pht.com/advisories/

WRKDIST=	${WRKDIR}/temp-watch

NO_CONFIGURE=	yes

ALL_TARGET=	OpenBSD

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/temp-watch ${PREFIX}/sbin/tempwatch
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tempwatch
		${INSTALL_DATA} ${FULLDISTDIR}/watch.txt ${PREFIX}/share/doc/tempwatch

.include <bsd.port.mk>
