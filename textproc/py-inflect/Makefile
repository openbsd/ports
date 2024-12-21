COMMENT=	correctly generate plurals, singular nouns, ordinals, etc

MODPY_DISTV=	7.3.1
DISTNAME=	inflect-${MODPY_DISTV}
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
RUN_DEPENDS=	devel/py-more-itertools \
		devel/py-typeguard

.include <bsd.port.mk>
