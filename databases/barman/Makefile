# $OpenBSD: Makefile,v 1.1.1.1 2013/08/10 13:42:45 landry Exp $

COMMENT =	backup and restoration manager for PostgreSQL

MODPY_EGG_VERSION =	1.2.2
DISTNAME =	barman-${MODPY_EGG_VERSION}
CATEGORIES =	databases
HOMEPAGE =	http://www.pgbarman.org/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=pgbarman/}

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =	databases/py-psycopg2 \
		databases/postgresql \
		net/rsync \
		devel/py-dateutil \
		devel/py-argh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/barman
	${INSTALL_DATA}	${WRKSRC}/README ${PREFIX}/share/doc/barman
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/barman
	${INSTALL_DATA}	${WRKSRC}/doc/barman.conf ${PREFIX}/share/examples/barman

.include <bsd.port.mk>
