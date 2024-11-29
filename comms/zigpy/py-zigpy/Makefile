COMMENT=	Python library implementing a Zigbee stack

MODPY_EGG_VERSION=	0.73.0
DISTNAME=	zigpy-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

GH_ACCOUNT=	zigpy
GH_PROJECT=	zigpy
GH_TAGNAME=	${MODPY_EGG_VERSION}

CATEGORIES=	comms

HOMEPAGE=	https://github.com/zigpy/zigpy

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PYBUILD=	setuptools
BUILD_DEPENDS=	devel/py-setuptools-git-versioning${MODPY_FLAVOR}

RUN_DEPENDS=	devel/py-attrs${MODPY_FLAVOR} \
		www/py-aiohttp${MODPY_FLAVOR} \
		databases/py-aiosqlite${MODPY_FLAVOR} \
		devel/py-crccheck${MODPY_FLAVOR} \
		security/py-cryptography${MODPY_FLAVOR} \
		devel/py-voluptuous${MODPY_FLAVOR} \
		devel/py-jsonschema${MODPY_FLAVOR} \
		comms/py-serial-asyncio${MODPY_FLAVOR} \
		devel/py-typing-extensions${MODPY_FLAVOR} \
		devel/py-frozendict${MODPY_FLAVOR} \

TEST_DEPENDS=	textproc/py-tomli${MODPY_FLAVOR} \
		devel/py-asynctest${MODPY_FLAVOR} \
		devel/py-coveralls${MODPY_FLAVOR} \
		devel/py-test-asyncio${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR} \
		devel/py-test-timeout${MODPY_FLAVOR} \
		devel/py-freezegun${MODPY_FLAVOR} \
		devel/py-aioresponses${MODPY_FLAVOR}

# to disable online tests
#MODPY_PYTEST_ARGS= --ignore tests/ota/test_ota_providers.py

FLAVORS=	python3
FLAVOR=		python3

# sdist misses all files under tests/ except for test*.py, so use the
# github tar instead, but that isn't handled by setuptools-git-version
# so fake it here:
post-extract:
	echo "Version: ${MODPY_EGG_VERSION}" > ${WRKSRC}/PKG-INFO

.include <bsd.port.mk>
