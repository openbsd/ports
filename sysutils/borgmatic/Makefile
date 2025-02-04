COMMENT=	wrapper for Borg to create and prune backups

MODPY_DISTV=	1.9.9
DISTNAME=	borgmatic-${MODPY_DISTV}

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

HOMEPAGE=	https://torsion.org/borgmatic/

CATEGORIES=	sysutils

EPOCH=		0

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	borgbackup-*:sysutils/borgbackup/1.4 \
		devel/py-colorama<0.5 \
		devel/py-jsonschema \
		sysutils/py-packaging \
		www/py-requests \
		textproc/py-ruamel.yaml
# borgmatic script used in post-install to generate config
BUILD_DEPENDS=	${RUN_DEPENDS}

MODPY_PYTEST_ARGS= --ignore tests/unit/hooks/test_apprise.py
TEST_DEPENDS=	devel/py-flexmock \
		devel/py-test-cov

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/borgmatic/
	PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
	    ${PREFIX}/bin/borgmatic config generate \
	    --destination ${PREFIX}/share/examples/borgmatic/config.yaml.dist

pre-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
