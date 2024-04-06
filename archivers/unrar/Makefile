COMMENT=	extract, list, and test RAR archives

# NB: The software version is different from the distfile version.
# Check version.hpp or the banner printed when running unrar
# for the version to use in PKGNAME.  In particular, RARVER_BETA
# is *not* a third digit, but increments before finally being set
# to 0 for a non-beta release, e.g., "5.00 beta 8" was succeeded
# by "5.00".

PKGNAME=	unrar-7.00
EPOCH=		2
DISTNAME=	unrarsrc-7.0.7
CATEGORIES=	archivers

HOMEPAGE=	https://www.rarlab.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# nonstandard
PERMIT_PACKAGE=	Yes

WANTLIB=	c m pthread ${COMPILER_LIBCXX}

COMPILER =	base-clang ports-gcc base-gcc

SITES=		${HOMEPAGE}rar/

WRKDIST=	${WRKDIR}/unrar

MAKE_FILE=	makefile
MAKE_FLAGS=	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" STRIP=:

CXXFLAGS+=	${CXXFLAGS-${MACHINE_ARCH}}
CXXFLAGS-aarch64= -march=armv8-a+crc+crypto

DEBUG_PACKAGES=	${BUILD_PACKAGES}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/unrar ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unrar
	${INSTALL_MAN} ${WRKSRC}/readme.txt ${WRKSRC}/license.txt \
		${PREFIX}/share/doc/unrar

NO_TEST=	Yes

.include <bsd.port.mk>
