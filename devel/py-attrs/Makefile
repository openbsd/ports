COMMENT=	classes without boilerplate

MODPY_DISTV=	24.3.0

DISTNAME=	attrs-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://www.attrs.org/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	hatch-vcs

BUILD_DEPENDS=	devel/py-hatch-fancy-pypi-readme
TEST_DEPENDS=	devel/py-hypothesis \
		devel/py-zopeinterface

.include <bsd.port.mk>
