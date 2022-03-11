COMMENT =		solve vertex enumeration and convex hull problems

V =			071a
REVISION =		0
DISTNAME =		lrslib-${V}
PKGNAME =		lrs-${V}
FIX_EXTRACT_PERMISSIONS=Yes

SHARED_LIBS =		lrs		0.0 # 1.0

CATEGORIES =		math

HOMEPAGE =		http://cgm.cs.mcgill.ca/~avis/C/lrs.html

MAINTAINER =		Dimitri Karamazov <deserter666@danwin1210.me>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		c gmp

MASTER_SITES =		http://cgm.cs.mcgill.ca/~avis/C/lrslib/archive/

USE_GMAKE =		Yes

MAKE_FILE =		makefile
MAKE_FLAGS =		INCLUDEDIR="${LOCALBASE}/include" \
			LIBDIR="${LOCALBASE}/lib" \
			CFLAGS="${CFLAGS} -Wall" \
			SONAME="liblrs.so.${LIBlrs_VERSION:R}" \
			SOMINOR=".${LIBlrs_VERSION:E}"

LIB_DEPENDS =		devel/gmp

# targets "lrs", "lrsnash", "single", "all-shared" require 128-bit ints
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c
ONLY_FOR_ARCHS =	${LP64_ARCHS}
ALL_TARGET =		lrs lrsnash single all-shared

# A simple test to check it works
do-test:
	cd ${FILESDIR} && \
	    cp test.ine expected_outcome.ine openbsd_regress.sh ${WRKBUILD}
	cd ${WRKBUILD} && sh openbsd_regress.sh

.include <bsd.port.mk>
