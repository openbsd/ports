COMMENT=	library for property based testing

MODPY_DISTV=	6.124.5
DISTNAME=	hypothesis-${MODPY_DISTV}
PKGNAME=	py-hypothesis-${MODPY_DISTV}
CATEGORIES=	devel

HOMEPAGE=	https://hypothesis.works/

# MPL 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-attrs \
		devel/py-coverage \
		devel/py-sortedcontainers<3.0.0

# Primary author is completely uninterested in supplying tests via PyPI
NO_TEST=	Yes

.include <bsd.port.mk>
