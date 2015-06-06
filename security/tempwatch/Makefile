# $OpenBSD: Makefile,v 1.21 2015/06/06 04:49:47 bentley Exp $

COMMENT=		temporary file auditing tool

PKGNAME=		tempwatch-1.0
REVISION=		0
CATEGORIES=		security

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# public domain
PERMIT_PACKAGE_CDROM=	Yes

DIST_SUBDIR=		tempwatch
DISTFILES=		l0pht-watch${EXTRACT_SUFX} watch.txt:0
EXTRACT_ONLY=		l0pht-watch${EXTRACT_SUFX}

MASTER_SITES=		http://distcache.freebsd.org/ports-distfiles/
MASTER_SITES0=		https://distfiles.bsdfrog.org/

WRKDIST=		${WRKDIR}/temp-watch

ALL_TARGET=		OpenBSD
MAKE_FLAGS=		CC="${CC} ${CFLAGS}"

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/temp-watch ${PREFIX}/sbin/tempwatch
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tempwatch
	${INSTALL_DATA} ${FULLDISTDIR}/watch.txt ${PREFIX}/share/doc/tempwatch

.include <bsd.port.mk>
