# $OpenBSD: Makefile,v 1.16 2010/07/12 10:24:52 ajacoutot Exp $

COMMENT=		temporary file auditing tool

PKGNAME=		tempwatch-1.0
CATEGORIES=		security

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

DIST_SUBDIR=		tempwatch
DISTFILES=		l0pht-watch${EXTRACT_SUFX} watch.txt:0
EXTRACT_ONLY=		l0pht-watch${EXTRACT_SUFX}

MASTER_SITES=		ftp://ftp.fr.freebsd.org/pub/FreeBSD/distfiles/
MASTER_SITES0=		${MASTER_SITE_BACKUP}

WRKDIST=		${WRKDIR}/temp-watch

ALL_TARGET=		OpenBSD
MAKE_FLAGS=		CC="${CC} ${CFLAGS}"

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/temp-watch ${PREFIX}/sbin/tempwatch
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tempwatch
	${INSTALL_DATA} ${FULLDISTDIR}/watch.txt ${PREFIX}/share/doc/tempwatch

.include <bsd.port.mk>
