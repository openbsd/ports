COMMENT=	determine appropriate platform-specific directories

MODPY_DISTV=	4.3.6
DISTNAME=	platformdirs-${MODPY_DISTV}
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

TEST_DEPENDS=	devel/py-appdirs \
		devel/py-test-mock

.include <bsd.port.mk>
