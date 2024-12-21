COMMENT =	backup and restoration manager for PostgreSQL

MODPY_DISTV =	3.10.0

GH_ACCOUNT =	EnterpriseDB
GH_PROJECT =	barman
GH_TAGNAME =	release/${MODPY_DISTV}
DISTNAME =	barman-${MODPY_DISTV}
WRKDIST =	${WRKDIR}/barman-release-${MODPY_DISTV}
REVISION =	1

CATEGORIES =	databases
HOMEPAGE =	https://www.pgbarman.org/

# GPLv3
PERMIT_PACKAGE =	Yes

# generated tars are available in /releases/, but lack tests
#SITES =	https://github.com/EnterpriseDB/barman/releases/download/release%2F${MODPY_DISTV}/

MODULES =	lang/python
MODPY_PYBUILD =	setuptools
RUN_DEPENDS =	databases/py-psycopg2 \
		databases/postgresql \
		net/rsync \
		devel/py-dateutil \
		devel/py-argcomplete

TEST_DEPENDS =	devel/py-test-timeout \
		devel/py-mock \
		devel/py-test-runner

# some cloud-related deps are not ported (esp for google/azure); pytest's
# collection of tets errors out if some of these are not ignored, and avoid
# noise from others
MODPY_PYTEST_ARGS=	--ignore tests/test_barman_cloud_backup.py \
			--ignore tests/test_barman_cloud_backup_show.py \
			--ignore tests/test_barman_cloud_restore.py \
			--ignore tests/test_barman_cloud_wal_archive.py \
			--ignore tests/test_cloud.py \
			--ignore tests/test_cloud_snapshot_interface.py \
			--ignore tests/test_executor.py \
			--ignore tests/test_infofile.py \
			--ignore tests/test_output.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/barman
	${INSTALL_DATA}	${WRKSRC}/doc/barman.conf \
	    ${PREFIX}/share/examples/barman

.include <bsd.port.mk>
