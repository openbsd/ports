COMMENT =	Symas Lightning Memory-Mapped Database

VERSION =	1.0.2
OVERSION =	0.9.36
DIST_TUPLE =	github LMDB lmdb LMDB_${VERSION} .
DIST_TUPLE +=	github LMDB lmdb LMDB_${OVERSION} .
PKGNAME =	lmdb-${VERSION}

PORTROACH =	site:https://github.com/LMDB/lmdb/archive/

SHARED_LIBS +=  lmdb                      1.0

CATEGORIES =	databases

HOMEPAGE =	https://symas.com/lmdb/

MAINTAINER =	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# OpenLDAP Public License
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

DEBUG_PACKAGES =	${BUILD_PACKAGES}

USE_GMAKE =		Yes

MAKE_FLAGS =		CC="${CC}" OPT="${CFLAGS}" LDL="" \
			LIBVER=${LIBlmdb_VERSION:R} \
			ABIVER=${LIBlmdb_VERSION:E} \
			mandir=${PREFIX}/man

WRKDIST =		${WRKDIR}/lmdb-LMDB_${VERSION}/libraries/liblmdb
OWRKDIST =		${WRKDIST}/lmdb-0.9

post-extract:
	mv ${WRKDIR}/lmdb-LMDB_${OVERSION}/libraries/liblmdb ${OWRKDIST}

post-build:
	cd ${OWRKDIST}; \
	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	    -f ${MAKE_FILE} mdb_dump mtest

post-test:
	cd ${OWRKDIST}; \
	    mkdir -p testdb testrestore; \
	    ./mtest; \
	    ./mdb_dump -a testdb | ${WRKBUILD}/mdb_load testrestore

post-install:
	${INSTALL_DATA} ${WRKBUILD}/lmdb.pc ${PREFIX}/lib/pkgconfig/lmdb.pc
	${INSTALL_PROGRAM} ${OWRKDIST}/mdb_dump ${PREFIX}/bin/mdb_dump-0.9
	${INSTALL_DATA} ${OWRKDIST}/mdb_dump.1 ${PREFIX}/man/man1/mdb_dump-0.9.1

.include <bsd.port.mk>
