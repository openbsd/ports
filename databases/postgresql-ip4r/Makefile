COMMENT=	IPv4/v6 and IPv4/v6 range index type for PostgreSQL

GH_ACCOUNT=	RhodiumToad
GH_PROJECT=	ip4r

# use a slightly newer commit including the license file
#GH_TAGNAME=	2.4.1
GH_COMMIT=	5f9ce88a353f241b7968b60835ba7186c8199162
DISTNAME=	ip4r-2.4.1pl1

PKGNAME=	postgresql-${DISTNAME}
CATEGORIES=	databases net

# PostgreSQL license (BSD)
PERMIT_PACKAGE=	Yes

WANTLIB += c

USE_GMAKE=	Yes

MODULES=	databases/postgresql
BUILD_DEPENDS=	databases/postgresql,-server
RUN_DEPENDS=	databases/postgresql,-server

TEST_DEPENDS=	${BUILD_PKGPATH}
TEST_TARGET=	installcheck

.include <bsd.port.mk>
