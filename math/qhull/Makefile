# $OpenBSD: Makefile,v 1.1.1.1 2010/11/19 09:01:12 shadchin Exp $

COMMENT =		computing the convex hull

VERSION =		2010.1
DISTNAME =		qhull-${VERSION}

SHARED_LIBS =		qhull		0.0

CATEGORIES =		math

HOMEPAGE =		http://www.qhull.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m

MASTER_SITES =		${HOMEPAGE}download/
DISTFILES =		${DISTNAME}-src${EXTRACT_SUFX}
EXTRACT_SUFX =		.tgz

MODULES =		devel/cmake

NO_REGRESS =		Yes

CFLAGS +=		-fno-strict-aliasing

.include <bsd.port.mk>
