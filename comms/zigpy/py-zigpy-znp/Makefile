COMMENT=	zigpy module and tools for TI CC2652/similar

MODPY_DISTV=	0.13.1

GH_ACCOUNT=	zigpy
GH_PROJECT=	zigpy-znp
GH_TAGNAME=	v${MODPY_DISTV}

DISTNAME=	zigpy-znp-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	comms

HOMEPAGE=	https://github.com/zigpy/zigpy-znp

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PYBUILD=	setuptools
BUILD_DEPENDS=	devel/py-setuptools-git-versioning

RUN_DEPENDS=	comms/zigpy/py-zigpy \
		devel/py-async-timeout \
		devel/py-voluptuous \
		textproc/py-coloredlogs \
		devel/py-jsonschema

# tests are pretty slow
TEST_DEPENDS=	devel/py-test-asyncio \
		devel/py-test-timeout \
		devel/py-test-mock \
		devel/py-test-cov

# sdist misses all files under tests/ except for test*.py, so use the
# github tar instead, but that isn't handled by setuptools-git-version
# so fake it here:
post-extract:
	echo "Version: ${MODPY_DISTV}" > ${WRKSRC}/PKG-INFO

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-zigpy-znp
	${INSTALL_DATA} ${WRKSRC}/TOOLS.md ${WRKSRC}/docs/* \
		${PREFIX}/share/doc/py-zigpy-znp

.include <bsd.port.mk>
