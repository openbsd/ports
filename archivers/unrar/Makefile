# $OpenBSD: Makefile,v 1.60 2014/09/08 18:54:30 naddy Exp $

COMMENT=	extract, list, and test RAR archives

# NB: The software version is different from the distfile version.
# Check version.hpp or the banner printed when running unrar
# for the version to use in PKGNAME.  In particular, RARVER_BETA
# is *not* a third digit, but increments before finally being set
# to 0 for a non-beta release, e.g., "5.00 beta 8" was succeeded
# by "5.00".

PKGNAME=	unrar-5.10
EPOCH=		1
DISTNAME=	unrarsrc-5.1.6
CATEGORIES=	archivers

HOMEPAGE=	http://www.rarlab.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# nonstandard
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto m pthread stdc++

MASTER_SITES=	${HOMEPAGE}rar/

WRKDIST=	${WRKDIR}/unrar

MAKE_FILE=	makefile
MAKE_FLAGS=	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" STRIP=:

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/unrar ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unrar
	${INSTALL_MAN} ${WRKSRC}/readme.txt ${WRKSRC}/license.txt \
		${PREFIX}/share/doc/unrar

NO_TEST=	Yes

.include <bsd.port.mk>
