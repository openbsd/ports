# $OpenBSD: Makefile,v 1.2 2013/08/10 21:55:49 landry Exp $

COMMENT =	HA and replication cluster management for PostgreSQL

DISTNAME =	repmgr-1.2.0
CATEGORIES =	databases
HOMEPAGE =	http://www.repmgr.org/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}download/
USE_GMAKE =	Yes
MAKE_FLAGS =	USE_PGXS=1

# for getopt_long.h
BUILD_DEPENDS =	databases/postgresql,-server
LIB_DEPENDS =	databases/postgresql
RUN_DEPENDS =	net/rsync
NO_TEST =	Yes
WANTLIB +=	c com_err crypto m pq readline ssl termcap xml2 z
WANTLIB +=	asn1 heimbase krb5 roken wind

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/repmgr
	${INSTALL_DATA}	${WRKSRC}/README.rst ${PREFIX}/share/doc/repmgr
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/repmgr
	${INSTALL_DATA}	${WRKSRC}/repmgr.conf ${PREFIX}/share/examples/repmgr

.include <bsd.port.mk>
