# $OpenBSD: Makefile,v 1.22 2004/02/11 17:46:02 sturm Exp $

COMMENT=	"extract, list, and test RAR archives"

DISTNAME=	unrarsrc-3.3.6
PKGNAME=	unrar-3.30
CATEGORIES=	archivers

HOMEPAGE=	http://www.rarlab.com/

# Restrictive
PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	"may not modify"
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}rar/

# - work around optimizer bug in gcc 2.95
# - exceptions don't work on sparc64
.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* gcc-patch-*
.endif

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
