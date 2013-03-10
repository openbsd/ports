# $OpenBSD: Makefile,v 1.58 2013/03/10 22:28:05 espie Exp $

COMMENT=	extract, list, and test RAR archives

# NB: The software version is different from the distfile version.
# Check version.hpp or the banner printed when running unrar
# for the version to use in PKGNAME.  In particular, RARVER_BETA
# is *not* a third digit, but increments before finally being set
# to 0 for a non-beta release, e.g., "4.00 beta 6" was succeeded
# by "4.00".

PKGNAME=	unrar-4.20
EPOCH=		1
DISTNAME=	unrarsrc-4.2.4
CATEGORIES=	archivers

HOMEPAGE=	http://www.rarlab.com/

# nonstandard
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto m stdc++

MASTER_SITES=	${HOMEPAGE}rar/

WRKDIST=	${WRKDIR}/unrar

MAKE_FILE=	makefile.unix
MAKE_FLAGS=	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" STRIP=:

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/unrar ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unrar
	${INSTALL_MAN} ${WRKSRC}/readme.txt ${WRKSRC}/license.txt \
		${PREFIX}/share/doc/unrar

NO_TEST=	Yes

.include <bsd.port.mk>
