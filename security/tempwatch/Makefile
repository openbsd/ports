# $OpenBSD: Makefile,v 1.10 2002/03/24 08:07:13 jsyn Exp $

COMMENT=		"temporary file auditing tool"

PKGNAME=		tempwatch-1.0
CATEGORIES=		security
NEED_VERSION=		1.515

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

DIST_SUBDIR=		tempwatch
DISTFILES=		l0pht-watch${EXTRACT_SUFX} watch.txt:0
EXTRACT_ONLY=		l0pht-watch${EXTRACT_SUFX}

MASTER_SITES=		http://www.atstake.com/research/tools/ \
  	 		${MASTER_SITE_PACKETSTORM}
MASTER_SITE_SUBDIR=	9901-exploits
MASTER_SITES0=		http://www.atstake.com/research/advisories/1999/

WRKDIST=		${WRKDIR}/temp-watch

ALL_TARGET=		OpenBSD

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/temp-watch ${PREFIX}/sbin/tempwatch
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tempwatch
	${INSTALL_DATA} ${FULLDISTDIR}/watch.txt ${PREFIX}/share/doc/tempwatch

.include <bsd.port.mk>
