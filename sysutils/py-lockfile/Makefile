COMMENT=	platform-independent file locking for Python

MODPY_DISTV=	0.12.2
DISTNAME=	lockfile-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	10

CATEGORIES=	sysutils

HOMEPAGE=	https://launchpad.net/pylockfile

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

BUILD_DEPENDS=	devel/py-pbr
RUN_DEPENDS=	devel/py-pbr

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

TEST_DEPENDS=	textproc/py-sphinx

pre-test:
	sed -i "s,^sphinx.*,sphinx," ${WRKSRC}/test-requirements.txt

.include <bsd.port.mk>
