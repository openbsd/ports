COMMENT=	library to provide abstract access to various archives

V=		3.2.0
PKGNAME=	physfs-${V}

DIST_TUPLE +=	github icculus physfs release-${V} .

CATEGORIES=	devel

SHARED_LIBS=	physfs		3.1

HOMEPAGE=	https://icculus.org/physfs/
MAINTAINER=	Thomas Frohwein <thfr@openbsd.org>

# ZLib
PERMIT_PACKAGE=	Yes

WANTLIB=	c curses pthread readline

MODULES=	devel/cmake

WRKDIST=	${WRKDIR}/physfs-release-${V}

.include <bsd.port.mk>
