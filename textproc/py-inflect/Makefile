COMMENT=	correctly generate plurals, singular nouns, ordinals, etc

MODPY_EGG_VERSION=	6.0.4
DISTNAME=	inflect-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	textproc

# https://github.com/jaraco/inflect
HOMEPAGE=	https://inflect.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm
RUN_DEPENDS=	devel/py-pydantic${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
