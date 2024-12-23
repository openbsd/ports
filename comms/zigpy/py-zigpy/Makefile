COMMENT=	Python library implementing a Zigbee stack

MODPY_DISTV=	0.73.3
DISTNAME=	zigpy-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

GH_ACCOUNT=	zigpy
GH_PROJECT=	zigpy
GH_TAGNAME=	${MODPY_DISTV}

CATEGORIES=	comms

HOMEPAGE=	https://github.com/zigpy/zigpy

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PYBUILD=	setuptools
BUILD_DEPENDS=	devel/py-setuptools-git-versioning

RUN_DEPENDS=	devel/py-attrs \
		www/py-aiohttp \
		databases/py-aiosqlite \
		devel/py-crccheck \
		security/py-cryptography \
		devel/py-voluptuous \
		devel/py-jsonschema \
		comms/py-serial-asyncio \
		devel/py-typing-extensions \
		devel/py-frozendict \

TEST_DEPENDS=	textproc/py-tomli \
		devel/py-asynctest \
		devel/py-coveralls \
		devel/py-test-asyncio \
		devel/py-test-cov \
		devel/py-test-timeout \
		devel/py-freezegun \
		devel/py-aioresponses

# to disable online tests
#MODPY_PYTEST_ARGS= --ignore tests/ota/test_ota_providers.py

# sdist misses all files under tests/ except for test*.py, so use the
# github tar instead, but that isn't handled by setuptools-git-version
# so fake it here:
post-extract:
	echo "Version: ${MODPY_DISTV}" > ${WRKSRC}/PKG-INFO

.include <bsd.port.mk>
