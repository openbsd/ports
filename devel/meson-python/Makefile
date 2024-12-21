COMMENT=		meson PEP 517 Python build backend

MODPY_DISTV=	0.17.1
DIST_TUPLE=		github mesonbuild meson-python ${MODPY_DISTV} .
REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		https://meson-python.readthedocs.io/en/latest/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PYBUILD=		other

BUILD_DEPENDS=		devel/meson \
			devel/py-pyproject-metadata

RUN_DEPENDS=		devel/meson \
			devel/py-pyproject-metadata

TEST_DEPENDS=		lang/cython

.include <bsd.port.mk>
