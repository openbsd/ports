# $OpenBSD: Makefile,v 1.18 2004/12/07 00:23:22 alek Exp $

COMMENT=	"convert text into the Doc format used by PalmPilots"

PKGNAME=	pilot_makedoc-0.7
CATEGORIES=	textproc palm

MASTER_SITES=	${MASTER_SITE_BACKUP}
DISTFILES=	makedoc7.cpp
EXTRACT_ONLY=

# License: NONE
PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"
WANTLIB=		c m stdc++ 

WRKDIST=	${WRKDIR}
ALL_TARGET=	pilot_makedoc
NO_REGRESS=	Yes

post-extract:
		@cp ${FULLDISTDIR}/${DISTFILES} ${WRKDIR}
		@cp ${FILESDIR}/Makefile ${WRKDIR}

do-install:
		@${INSTALL_PROGRAM} ${WRKDIR}/pilot_makedoc ${PREFIX}/bin

.include <bsd.port.mk>
