COMMENT=	handy routines for dealing with text

MODPY_EGG_VERSION=	3.11.1
DISTNAME=	jaraco.text-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	textproc

# https://github.com/jaraco/jaraco.text
HOMEPAGE=	https://jaracotext.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm
RUN_DEPENDS=	devel/py-jaraco-context${MODPY_FLAVOR} \
		devel/py-jaraco-functools${MODPY_FLAVOR} \
		devel/py-more-itertools${MODPY_FLAVOR} \
	        devel/py-autocommand${MODPY_FLAVOR} \
		textproc/py-inflect${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
