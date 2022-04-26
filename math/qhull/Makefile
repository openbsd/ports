COMMENT =		computing the convex hull

DISTNAME =		qhull-${VERSION}

SHARED_LIBS =		qhull_p		1.0
SHARED_LIBS +=		qhull		1.0
SHARED_LIBS +=		qhull_r		0.0

VERSION =		2020.2
QHULL_REV =		8.0.2

CATEGORIES =		math

HOMEPAGE =		http://www.qhull.org/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c m

MASTER_SITES =		${HOMEPAGE}download/
DISTFILES =		${DISTNAME:R}-src-${QHULL_REV}${EXTRACT_SUFX}
EXTRACT_SUFX =		.tgz

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DMAN_INSTALL_DIR=${PREFIX}/man/man1

.include <bsd.port.mk>
