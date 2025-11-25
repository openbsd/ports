COMMENT =		R procedural language for PostgreSQL

VERSION =		8.4.7
GH_ACCOUNT =		postgres-plr
GH_PROJECT =		plr
GH_TAGNAME =		REL${VERSION:S/./_/g}

PKGNAME =		postgresql-plr-${VERSION}

CATEGORIES =		databases

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c lib/R/lib/R

# -Wvla and other unrecognized command line options
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

BUILD_DEPENDS =		databases/postgresql,-server
RUN_DEPENDS =		databases/postgresql,-server
LIB_DEPENDS =		math/R

MAKE_ENV =		USE_PGXS=1
MAKE_FLAGS =		SHLIB_LINK="-Wl,-rpath=/usr/local/lib/R/lib -L /usr/local/lib/R/lib -lR"

USE_GMAKE =		Yes

MODULES =		databases/postgresql
TEST_TARGET =		installcheck
TEST_DEPENDS =		${BUILD_PKGPATH}

.include <bsd.port.mk>
