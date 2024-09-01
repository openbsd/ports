COMMENT=	compute distance between texts

MODPY_EGG_VERSION=	4.6.3
DISTNAME=	textdistance-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	textproc

MAINTAINER =	Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

# don't have all the deps for external tests
TEST_DEPENDS=	devel/py-hypothesis${MODPY_FLAVOR} \
		math/py-numpy${MODPY_FLAVOR} \
		textproc/py-jellyfish${MODPY_FLAVOR}

.include <bsd.port.mk>
