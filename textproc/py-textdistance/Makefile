COMMENT=	compute distance between texts

MODPY_DISTV=	4.6.3
DISTNAME=	textdistance-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

CATEGORIES=	textproc

MAINTAINER =	Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

# don't have all the deps for external tests
TEST_DEPENDS=	devel/py-hypothesis \
		math/py-numpy \
		textproc/py-jellyfish

.include <bsd.port.mk>
