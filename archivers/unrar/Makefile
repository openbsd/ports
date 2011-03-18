# $OpenBSD: Makefile,v 1.52 2011/03/18 20:14:58 naddy Exp $

COMMENT=	extract, list, and test RAR archives

# NB: The software version is different from the distfile version.
# Check version.hpp or the banner printed when running unrar
# for the version to use in PKGNAME.  In particular, RARVER_BETA
# is *not* a third digit, but increments before finally being set
# to 0 for a non-beta release, e.g., "4.00 beta 6" was succeeded
# by "4.00".

PKGNAME=	unrar-4.00
EPOCH=		0
DISTNAME=	unrarsrc-4.0.7
CATEGORIES=	archivers

HOMEPAGE=	http://www.rarlab.com/

MAINTAINER=	Rui Reis <rui@openbsd.org>

# nonstandard
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m stdc++

MASTER_SITES=	${HOMEPAGE}rar/

WRKDIST=	${WRKDIR}/unrar

MAKE_FILE=	makefile.unix
MAKE_FLAGS=	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" STRIP=:

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/unrar ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unrar
	${INSTALL_MAN} ${WRKSRC}/readme.txt ${WRKSRC}/license.txt \
		${PREFIX}/share/doc/unrar

NO_REGRESS=	Yes

.include <bsd.port.mk>
