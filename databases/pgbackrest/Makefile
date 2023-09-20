COMMENT =		PostgreSQL backup & restore tool

V =			2.47
DISTNAME =		pgbackrest-${V}

CATEGORIES = 		databases
HOMEPAGE = 		https://pgbackrest.org/
MAINTAINER = 		Pavel Korovin <pvk@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/pgbackrest/pgbackrest/archive/release/
DISTFILES =		pgbackrest-{}${V}.tar.gz

WRKDIST =		${WRKDIR}/pgbackrest-release-${V}
WRKSRC =		${WRKDIST}/src

WANTLIB += 		bz2 c crypto lz4 pq ssl xml2 z zstd

BUILD_DEPENDS =		devel/libyaml

RUN_DEPENDS =		databases/postgresql,-server

LIB_DEPENDS = 		archivers/bzip2 \
		  	archivers/lz4 \
			archivers/zstd \
			databases/postgresql \
			textproc/libxml

USE_GMAKE =		Yes

CONFIGURE_STYLE =  	gnu

ALL_TARGET =

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pgbackrest
	${INSTALL_DATA} ${FILESDIR}/pgbackrest.conf \
		${PREFIX}/share/examples/pgbackrest

.include <bsd.port.mk>
