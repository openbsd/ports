COMMENT=	zigpy module and tools for TI CC2652/similar

MODPY_EGG_VERSION=	0.13.1

GH_ACCOUNT=	zigpy
GH_PROJECT=	zigpy-znp
GH_TAGNAME=	v${MODPY_EGG_VERSION}

DISTNAME=	zigpy-znp-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	comms

HOMEPAGE=	https://github.com/zigpy/zigpy-znp

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PYBUILD=	setuptools
BUILD_DEPENDS=	devel/py-setuptools-git-versioning${MODPY_FLAVOR}

RUN_DEPENDS=	comms/zigpy/py-zigpy${MODPY_FLAVOR} \
		devel/py-async-timeout${MODPY_FLAVOR} \
		devel/py-voluptuous${MODPY_FLAVOR} \
		textproc/py-coloredlogs${MODPY_FLAVOR} \
		devel/py-jsonschema${MODPY_FLAVOR}

# tests are pretty slow
TEST_DEPENDS=	devel/py-test-asyncio${MODPY_FLAVOR} \
		devel/py-test-timeout${MODPY_FLAVOR} \
		devel/py-test-mock${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

# sdist misses all files under tests/ except for test*.py, so use the
# github tar instead, but that isn't handled by setuptools-git-version
# so fake it here:
post-extract:
	echo "Version: ${MODPY_EGG_VERSION}" > ${WRKSRC}/PKG-INFO

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-zigpy-znp
	${INSTALL_DATA} ${WRKSRC}/TOOLS.md ${WRKSRC}/docs/* \
		${PREFIX}/share/doc/py-zigpy-znp

.include <bsd.port.mk>
