# $OpenBSD: Makefile,v 1.6 2019/07/12 20:47:42 sthen Exp $

COMMENT =		solve vertex enumeration and convex hull problems

DISTNAME =		lrslib-042c
PKGNAME =		lrs-042
REVISION =		1
FIX_EXTRACT_PERMISSIONS=Yes

CATEGORIES =		math

HOMEPAGE =		http://cgm.cs.mcgill.ca/~avis/C/lrs.html

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		c gmp

MASTER_SITES =		http://cgm.cs.mcgill.ca/~avis/C/lrslib/

MAKE_FILE =		makefile
MAKE_FLAGS =		CPPFLAGS=-I${LOCALBASE}/include LDFLAGS=-L${LOCALBASE}/lib
ALL_TARGET =		gmp	# build with arbitrary precision numbers

LIB_DEPENDS =		devel/gmp

BINARIES =		2gnash buffer gfourier glrs gnash gredund
do-install:
.for i in ${BINARIES}
	${INSTALL_PROGRAM} ${WRKBUILD}/${i} ${PREFIX}/bin/
.endfor

# A simple test to check it works
REGRESS_FILES =		test.ine expected_outcome.ine openbsd_regress.sh
do-test:
.for i in ${REGRESS_FILES}
	cp ${FILESDIR}/${i} ${WRKBUILD}
.endfor
	cd ${WRKBUILD} && sh openbsd_regress.sh

# resolve conflict with www/gnash and misc/buffer
post-install:
	mv ${PREFIX}/bin/gnash ${PREFIX}/bin/lrsgnash
	mv ${PREFIX}/bin/buffer ${PREFIX}/bin/lrsbuffer

.include <bsd.port.mk>
