COMMENT=	IPv4/v6 and IPv4/v6 range index type for PostgreSQL

GH_ACCOUNT=	RhodiumToad
GH_PROJECT=	ip4r
GH_TAGNAME=	2.4.3

PKGNAME=	postgresql-${DISTNAME}
CATEGORIES=	databases net

# PostgreSQL license (BSD)
PERMIT_PACKAGE=	Yes

# -Wvla and other unrecognized command line options
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB += c

USE_GMAKE=	Yes

MODULES=	databases/postgresql
BUILD_DEPENDS=	databases/postgresql,-server
RUN_DEPENDS=	databases/postgresql,-server

TEST_DEPENDS=	${BUILD_PKGPATH}
TEST_TARGET=	installcheck

.include <bsd.port.mk>
