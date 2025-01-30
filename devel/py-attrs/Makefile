COMMENT=	classes without boilerplate

MODPY_DISTV=	25.1.0
DISTNAME=	attrs-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://www.attrs.org/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatch-vcs
MODPY_PI=	Yes

BUILD_DEPENDS=	devel/py-hatch-fancy-pypi-readme
TEST_DEPENDS=	devel/py-hypothesis \
		devel/py-zopeinterface

.include <bsd.port.mk>
