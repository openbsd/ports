COMMENT=	handy routines for dealing with text

MODPY_DISTV=	4.2.0
DISTNAME=	jaraco_text-${MODPY_DISTV}
PKGNAME=	py-jaraco.text-${MODPY_DISTV}

CATEGORIES=	textproc

# https://github.com/jaraco/jaraco.text
HOMEPAGE=	https://jaracotext.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm
BUILD_DEPENDS=	misc/py-coherent.licensed
RUN_DEPENDS=	devel/py-jaraco-context \
		devel/py-jaraco-functools \
		devel/py-more-itertools \
	        devel/py-typer
TEST_DEPENDS=	textproc/py-inflect

.include <bsd.port.mk>
