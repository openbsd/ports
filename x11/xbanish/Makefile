COMMENT=	utility to automatically hide X11 cursor when typing

V=		1.8
DISTNAME=	v${V}
DIST_SUBDIR=	xbanish
PKGNAME=	${DIST_SUBDIR}-${V}
REVISION=	0

CATEGORIES=	x11
HOMEPAGE=	https://github.com/jcs/xbanish

MAINTAINER=	joshua stein <jcs@jcs.org>

MASTER_SITES=	${HOMEPAGE}/archive/

# BSD
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB+=	X11 Xfixes Xi c Xext

FAKE_FLAGS=	DESTDIR=

NO_TEST=	Yes

WRKDIST=	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
