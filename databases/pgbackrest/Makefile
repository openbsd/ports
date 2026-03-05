COMMENT =		PostgreSQL backup & restore tool

V =			2.58.0
DISTNAME =		pgbackrest-${V}
GH_ACCOUNT =		pgbackrest
GH_PROJECT =		pgbackrest
GH_TAGNAME =		release/${V}

CATEGORIES = 		databases
HOMEPAGE = 		https://pgbackrest.org/
MAINTAINER = 		Pavel Korovin <pvk@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB += 		bz2 c crypto lz4 pq ssh2 ssl xml2 z zstd

BUILD_DEPENDS =		devel/libyaml

MODULES =		devel/meson

LIB_DEPENDS = 		archivers/bzip2 \
			archivers/lz4 \
			archivers/zstd \
			databases/postgresql,-main \
			security/libssh2 \
			textproc/libxml

CFLAGS +=		-I${LOCALBASE}/include
LDFLAGS +=		-L${LOCALBASE}/lib
MODMESON_CONFIGURE_ENV +=	CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pgbackrest
	${INSTALL_DATA} ${FILESDIR}/pgbackrest.conf \
		${PREFIX}/share/examples/pgbackrest

.include <bsd.port.mk>
