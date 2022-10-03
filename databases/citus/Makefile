COMMENT =		extension to horizontally scale PostgreSQL

GH_ACCOUNT =		citusdata
GH_PROJECT =		citus
GH_TAGNAME =		v11.1.2

CATEGORIES =		databases
HOMEPAGE =		https://www.citusdata.com/

# AGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto execinfo m pq ssl xml2

LIB_DEPENDS =		databases/postgresql
BUILD_DEPENDS =		databases/postgresql,-server
RUN_DEPENDS =		databases/postgresql,-server

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-libcurl \
			--without-lz4 \
			--without-zstd

.include <bsd.port.mk>
