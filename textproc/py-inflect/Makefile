COMMENT=	correctly generate plurals, singular nouns, ordinals, etc

MODPY_EGG_VERSION=	7.3.1
DISTNAME=	inflect-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc

# https://github.com/jaraco/inflect
HOMEPAGE=	https://inflect.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm
RUN_DEPENDS=	devel/py-more-itertools${MODPY_FLAVOR} \
		devel/py-typeguard${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
