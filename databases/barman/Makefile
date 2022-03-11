COMMENT =	backup and restoration manager for PostgreSQL

MODPY_EGG_VERSION =	2.17
REVISION =	0

GH_ACCOUNT =	EnterpriseDB
GH_PROJECT =	barman
GH_TAGNAME =	release/${MODPY_EGG_VERSION}
DISTNAME =	barman-${MODPY_EGG_VERSION}
WRKDIST =	${WRKDIR}/barman-release-${MODPY_EGG_VERSION}

CATEGORIES =	databases
HOMEPAGE =	https://www.pgbarman.org/

# GPLv3
PERMIT_PACKAGE =	Yes

#MASTER_SITES =	https://github.com/EnterpriseDB/barman/releases/download/release%2F${MODPY_EGG_VERSION}/

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =	databases/py-psycopg2${MODPY_FLAVOR} \
		databases/postgresql \
		net/rsync \
		devel/py-dateutil${MODPY_FLAVOR} \
		devel/py-argh${MODPY_FLAVOR}

MODPY_PYTEST =	Yes
TEST_DEPENDS =	devel/py-test-timeout${MODPY_FLAVOR} \
		devel/py-test-runner${MODPY_FLAVOR}

pre-test:
	rm ${WRKSRC}/tests/test*cloud* # some deps are not ported

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/barman
	${INSTALL_DATA}	${WRKSRC}/doc/barman.conf \
	    ${PREFIX}/share/examples/barman

.include <bsd.port.mk>
