# $OpenBSD: Makefile,v 1.8 2016/03/16 16:46:32 naddy Exp $

COMMENT =	HA and replication cluster management for PostgreSQL

DISTNAME =	repmgr-3.0.3
CATEGORIES =	databases
HOMEPAGE =	http://www.repmgr.org/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto m pq pthread readline ssl termcap xml2 z

MASTER_SITES =	${HOMEPAGE}download/
USE_GMAKE =	Yes
MAKE_FLAGS =	USE_PGXS=1

# for getopt_long.h
BUILD_DEPENDS =	databases/postgresql,-server
LIB_DEPENDS =	databases/postgresql
RUN_DEPENDS =	net/rsync

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/config.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/repmgr
	${INSTALL_DATA}	${WRKSRC}/README.md ${PREFIX}/share/doc/repmgr
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/repmgr
	${INSTALL_DATA}	${WRKSRC}/repmgr.conf.sample ${PREFIX}/share/examples/repmgr/repmgr.conf

.include <bsd.port.mk>
