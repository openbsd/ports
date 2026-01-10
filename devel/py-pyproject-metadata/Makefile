COMMENT=	PEP 621 metadata parsing

MODPY_DISTV=	0.10.0
DISTNAME=	pyproject_metadata-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/FFY00/python-pyproject-metadata

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

RUN_DEPENDS=	sysutils/py-packaging
TEST_DEPENDS=	devel/py-exceptiongroup

.include <bsd.port.mk>
