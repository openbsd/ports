COMMENT=	wrapper for Borg to create and prune backups

MODPY_EGG_VERSION=	1.7.7
DISTNAME=	borgmatic-${MODPY_EGG_VERSION}

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

HOMEPAGE=	https://torsion.org/borgmatic/

CATEGORIES=	sysutils

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-colorama${MODPY_FLAVOR}-<0.5 \
		borgbackup-*:sysutils/borgbackup/1.2 \
		devel/py-jsonschema${MODPY_FLAVOR} \
		devel/py-setuptools${MODPY_FLAVOR} \
		textproc/py-ruamel.yaml${MODPY_FLAVOR}>=0.15.0,<0.18.0 \
		www/py-requests${MODPY_FLAVOR}
BUILD_DEPENDS=	${RUN_DEPENDS}
TEST_DEPENDS=	devel/py-flexmock${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/borgmatic/
	PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
	    ${PREFIX}/bin/generate-borgmatic-config \
	    --destination ${PREFIX}/share/examples/borgmatic/config.yaml.dist

.include <bsd.port.mk>
