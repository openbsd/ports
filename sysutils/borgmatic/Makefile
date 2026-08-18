COMMENT=	wrapper for Borg to create and prune backups

MODPY_DISTV=	2.1.7
DISTNAME=	borgmatic-${MODPY_DISTV}

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# https://github.com/borgmatic-collective/borgmatic/releases
HOMEPAGE=	https://torsion.org/borgmatic/

CATEGORIES=	sysutils

EPOCH=		0

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# XXX new 'browse' ui needs devel/py-binaryornot and 'textual' (wip)
RUN_DEPENDS=	borgbackup-*:sysutils/borgbackup/1.4 \
		devel/py-colorama<0.5 \
		devel/py-jsonschema \
		sysutils/py-packaging \
		www/py-requests \
		textproc/py-ruamel.yaml
# borgmatic script used in post-install to generate config
BUILD_DEPENDS=	${RUN_DEPENDS}

# 'browse' tests need 'textual'
MODPY_PYTEST_ARGS= --ignore tests/unit/hooks/test_apprise.py \
		--ignore tests/integration/actions/browse/test_app.py \
		--ignore tests/integration/actions/browse/test_archives_list.py \
		--ignore tests/integration/actions/browse/test_carousel.py \
		--ignore tests/integration/actions/browse/test_configuration_files_list.py \
		--ignore tests/integration/actions/browse/test_directory_list.py \
		--ignore tests/integration/actions/browse/test_file_preview.py \
		--ignore tests/integration/actions/browse/test_loading.py \
		--ignore tests/integration/actions/browse/test_logs.py \
		--ignore tests/integration/actions/browse/test_repositories_list.py \
		--ignore tests/integration/actions/browse/test_workers.py \
		--ignore tests/unit/actions/browse/test_archive.py \
		--ignore tests/unit/actions/browse/test_directory_list.py \
		--ignore tests/unit/actions/browse/test_logs.py \
		--ignore tests/unit/actions/browse/test_run.py \
		--ignore tests/unit/actions/browse/test_workers.py

TEST_DEPENDS=	devel/py-flexmock \
		devel/py-test-cov \
		devel/py-test-timeout \
		net/py-apprise

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/borgmatic/
	PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
	    ${PREFIX}/bin/borgmatic config generate \
	    --destination ${PREFIX}/share/examples/borgmatic/config.yaml.dist

.include <bsd.port.mk>
