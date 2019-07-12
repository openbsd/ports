# $OpenBSD: Makefile,v 1.13 2019/07/12 20:43:52 sthen Exp $

COMMENT =	backup and restoration manager for PostgreSQL

MODPY_EGG_VERSION =	2.3
DISTNAME =	barman-${MODPY_EGG_VERSION}
CATEGORIES =	databases
HOMEPAGE =	http://www.pgbarman.org/
REVISION =	0

# GPLv3
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=pgbarman/}

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =	databases/py-psycopg2 \
		databases/postgresql \
		net/rsync \
		devel/py-dateutil \
		devel/py-argh

# needs pytest-timeout and pytest-catchlog
NO_TEST =	Yes
#TEST_DEPENDS =	devel/py-test-timeout \
#		devel/py-test-catchlog \
#		devel/py-test-runner \
#		devel/py-setuptools_scm

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/barman
	${INSTALL_DATA}	${WRKSRC}/doc/barman.conf ${PREFIX}/share/examples/barman

.include <bsd.port.mk>
