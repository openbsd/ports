# $OpenBSD: Makefile,v 1.14 2002/10/28 22:43:46 naddy Exp $

COMMENT=	"convert text into the Doc format used by PalmPilots"

PKGNAME=	pilot_makedoc-0.7
CATEGORIES=	textproc palm

MASTER_SITES=	http://www.concentric.net/~rbram/
DISTFILES=	makedoc7.cpp
EXTRACT_ONLY=

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

# License: NONE
PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

WRKDIST=	${WRKDIR}
ALL_TARGET=	pilot_makedoc
NO_REGRESS=	Yes

post-extract:
		@cp ${DISTDIR}/${DISTFILES} ${WRKDIR}
		@cp ${FILESDIR}/Makefile ${WRKDIR}

do-install:
		@${INSTALL_PROGRAM} ${WRKDIR}/pilot_makedoc ${PREFIX}/bin

.include <bsd.port.mk>
