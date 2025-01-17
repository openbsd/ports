COMMENT=	filters to enhance web typography

MODPY_DISTV=	2.1.0
DISTNAME=	typogrify-${MODPY_DISTV}
PKGNAME=	py-typogrify-${MODPY_DISTV}

CATEGORIES=	textproc

# BSD 3-clause
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes
MODPY_PYTEST_ARGS= ${WRKSRC}/typogrify/packages/titlecase/tests.py

RUN_DEPENDS=	textproc/py-smartypants

.include <bsd.port.mk>
