BROKEN-sparc64 = BezierTest.testLinear2D:90 expected:<0.5> but was:<0.0>

VERSION =	1.9.9
REVISION =	2
PKGSPEC =	libgdx->=${VERSION},<1.9.10
PORTROACH =	ignore:1

WANTLIB += ${COMPILER_LIBCXX} X11 m

DISTFILES ?=	${DISTNAME}${EXTRACT_SUFX}

DISTFILES.a ?= 	m2repo-libgdx-${VERSION}-tools-p0.tar.gz

.include <bsd.port.mk>
