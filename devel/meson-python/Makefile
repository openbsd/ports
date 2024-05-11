COMMENT=		meson PEP 517 Python build backend

MODPY_EGG_VERSION=	0.16.0
DIST_TUPLE=		github mesonbuild meson-python ${MODPY_EGG_VERSION} .
REVISION=		1

CATEGORIES=		devel

HOMEPAGE=		https://meson-python.readthedocs.io/en/latest/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PYBUILD=		other

BUILD_DEPENDS=		devel/meson \
			devel/py-pyproject-metadata${MODPY_FLAVOR}

RUN_DEPENDS=		devel/meson \
			devel/py-pyproject-metadata${MODPY_FLAVOR}

TEST_DEPENDS=		lang/cython${MODPY_FLAVOR}

.include <bsd.port.mk>
