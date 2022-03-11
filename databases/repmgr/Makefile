COMMENT =	HA and replication cluster management for PostgreSQL

DISTNAME =	repmgr-5.2.1
CATEGORIES =	databases
HOMEPAGE =	https://repmgr.org/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += c pq

MASTER_SITES =	${HOMEPAGE}download/

USE_GMAKE =	Yes
MAKE_FLAGS =	USE_PGXS=1
CONFIGURE_ENV =	HAVE_GSED=no
CONFIGURE_STYLE = gnu

# for getopt_long.h
BUILD_DEPENDS =	databases/postgresql,-server
LIB_DEPENDS =	databases/postgresql
RUN_DEPENDS =	net/rsync

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/repmgr
	${INSTALL_DATA}	${WRKSRC}/README.md ${PREFIX}/share/doc/repmgr
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/repmgr
	${INSTALL_DATA}	${WRKSRC}/repmgr.conf.sample ${PREFIX}/share/examples/repmgr/repmgr.conf

.include <bsd.port.mk>
