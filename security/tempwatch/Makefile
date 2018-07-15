# $OpenBSD: Makefile,v 1.24 2018/07/15 08:36:39 espie Exp $

COMMENT=		temporary file auditing tool

PKGNAME=		tempwatch-1.0
REVISION=		1
CATEGORIES=		security

# public domain
PERMIT_PACKAGE_CDROM=	Yes

DIST_SUBDIR=		tempwatch
DISTFILES=		l0pht-watch${EXTRACT_SUFX} watch.txt:0
EXTRACT_ONLY=		l0pht-watch${EXTRACT_SUFX}

MASTER_SITES=		${MASTER_SITE_FREEBSD}
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
