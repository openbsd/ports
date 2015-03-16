# $OpenBSD: Makefile,v 1.4 2015/03/16 18:07:50 naddy Exp $

COMMENT =		computing the convex hull

VERSION =		2011.1
DISTNAME =		qhull-${VERSION}
REVISION =		0

SHARED_LIBS =		qhull6		0.0 # 6.2

CATEGORIES =		math

HOMEPAGE =		http://www.qhull.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m stdc++

MASTER_SITES =		${HOMEPAGE}download/
DISTFILES =		${DISTNAME}-src${EXTRACT_SUFX}
EXTRACT_SUFX =		.tgz

MODULES =		devel/cmake

NO_TEST =		Yes

CFLAGS +=		-fno-strict-aliasing
CONFIGURE_ARGS +=	-DDOC_INSTALL_DIR=${PREFIX}/share/doc/qhull

.include <bsd.port.mk>
