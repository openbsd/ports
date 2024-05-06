COMMENT=		meson PEP 517 Python build backend

MODPY_EGG_VERSION=	0.16.0
DIST_TUPLE=		github mesonbuild meson-python ${MODPY_EGG_VERSION} .
REVISION=		0

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

# XXX drop once default python3 version is bumped to >=3.11
BUILD_DEPENDS +=	textproc/py-tomli${MODPY_FLAVOR}
RUN_DEPENDS +=		textproc/py-tomli${MODPY_FLAVOR}

.include <bsd.port.mk>
