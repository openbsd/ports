# $OpenBSD: Makefile,v 1.19 2003/04/16 20:59:17 sturm Exp $

COMMENT=	"extract, list, and test RAR archives"

DISTNAME=	unrarsrc-3.2.1
PKGNAME=	unrar-3.20beta3
CATEGORIES=	archivers

HOMEPAGE=	http://www.rarlab.com/

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
