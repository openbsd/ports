COMMENT =		Computational Geometry Algorithms Library

V =			5.6
DISTNAME =		CGAL-${V}
PKGNAME =		${DISTNAME:L}
EPOCH =			0
REVISION =		0

CATEGORIES =		math

HOMEPAGE =		https://www.cgal.org/

# LGPLv3+ and GPLv3+; see https://www.cgal.org/license.html
PERMIT_PACKAGE =	Yes

SITES =			https://github.com/CGAL/cgal/releases/download/v${V}/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/cmake \
			lang/python

RUN_DEPENDS =		devel/boost \
			devel/gmp \
			devel/mpfr

NO_BUILD =		Yes
NO_TEST =		Yes

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/cmake/CGAL/Help

.include <bsd.port.mk>
