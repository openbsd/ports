# $OpenBSD: Makefile,v 1.7 2020/11/20 19:16:18 edd Exp $

COMMENT =		solve vertex enumeration and convex hull problems

V =			071a
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
MAKE_FLAGS =		CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib \
			CFLAGS="${CFLAGS} -Wall" \
			SONAME="liblrs.so.${LIBlrs_VERSION:R}" \
			SOMINOR=".${LIBlrs_VERSION:E}"

ALL_TARGET =		lrs lrsnash single all-shared

LIB_DEPENDS =		devel/gmp

# A simple test to check it works
REGRESS_FILES =		test.ine expected_outcome.ine openbsd_regress.sh
do-test:
.for i in ${REGRESS_FILES}
	cp ${FILESDIR}/${i} ${WRKBUILD}
.endfor
	cd ${WRKBUILD} && sh openbsd_regress.sh

.include <bsd.port.mk>
