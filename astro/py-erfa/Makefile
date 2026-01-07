COMMENT=	Python wrapper for ERFA

MODPY_DISTV=	2.0.1.5
REVISION=	0

DISTNAME=	pyerfa-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/py/py-/}

CATEGORIES=	astro

# https://github.com/liberfa/pyerfa
HOMEPAGE=	https://pyerfa.readthedocs.io/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	erfa

MAINTAINER=	Wen Heping <wenheping2000@hotmail.com>

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm
MODPY_TEST_LINK_SO= Yes

LIB_DEPENDS=	astro/liberfa
MAKE_ENV=	PYERFA_USE_SYSTEM_LIBERFA=1 \
		CPPFLAGS=-I${LOCALBASE}/include

BUILD_DEPENDS=	math/py-numpy \
		sysutils/py-packaging \
		www/py-jinja2
RUN_DEPENDS=	math/py-numpy
TEST_DEPENDS=	devel/py-test-doctestplus

.include <bsd.port.mk>
