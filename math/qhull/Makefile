# $OpenBSD: Makefile,v 1.6 2019/07/12 20:47:46 sthen Exp $

COMMENT =		computing the convex hull

DISTNAME =		qhull-2012.1

SHARED_LIBS =		qhull_p		0.0 # 6.0
SHARED_LIBS +=		qhull		0.0 # 6.0

CATEGORIES =		math

HOMEPAGE =		http://www.qhull.org/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c m

MASTER_SITES =		${HOMEPAGE}download/
DISTFILES =		${DISTNAME}-src${EXTRACT_SUFX}
EXTRACT_SUFX =		.tgz

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DMAN_INSTALL_DIR=${PREFIX}/man/man1

.include <bsd.port.mk>
