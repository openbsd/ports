# $OpenBSD: Makefile,v 1.26 2004/11/21 12:50:33 espie Exp $

COMMENT=	"extract, list, and test RAR archives"

DISTNAME=	unrarsrc-3.4.3
PKGNAME=	unrar-3.43
CATEGORIES=	archivers

HOMEPAGE=	http://www.rarlab.com/

# Restrictive
PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	"may not modify"
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++

MASTER_SITES=	${HOMEPAGE}rar/

WRKDIST=	${WRKDIR}/unrar

MAKE_FILE=	makefile.unix
MAKE_FLAGS=	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" DEFINES=""

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/unrar ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unrar
	${INSTALL_MAN} ${WRKSRC}/readme.txt ${WRKSRC}/license.txt \
		${PREFIX}/share/doc/unrar

NO_REGRESS=	Yes

.include <bsd.port.mk>
