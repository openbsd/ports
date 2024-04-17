COMMENT=	wrapper for Borg to create and prune backups

MODPY_EGG_VERSION=	1.8.10
DISTNAME=	borgmatic-${MODPY_EGG_VERSION}

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

HOMEPAGE=	https://torsion.org/borgmatic/

CATEGORIES=	sysutils

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	borgbackup-*:sysutils/borgbackup/1.2 \
		devel/py-colorama${MODPY_FLAVOR}-<0.5 \
		devel/py-jsonschema${MODPY_FLAVOR} \
		sysutils/py-packaging${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		textproc/py-ruamel.yaml${MODPY_FLAVOR}
# borgmatic script used in post-install to generate config
BUILD_DEPENDS=	${RUN_DEPENDS}

MODPY_PYTEST_ARGS= --ignore tests/unit/hooks/test_apprise.py
TEST_DEPENDS=	devel/py-flexmock${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/borgmatic/
	PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
	    ${PREFIX}/bin/borgmatic config generate \
	    --destination ${PREFIX}/share/examples/borgmatic/config.yaml.dist

pre-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
