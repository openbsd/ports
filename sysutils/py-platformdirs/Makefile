COMMENT=	determine appropriate platform-specific directories

MODPY_EGG_VERSION=	4.2.0
DISTNAME=	platformdirs-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/platformdirs/platformdirs

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatch-vcs
MODPY_PYTEST=	Yes

TEST_DEPENDS=	devel/py-appdirs${MODPY_FLAVOR} \
		devel/py-test-mock${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
