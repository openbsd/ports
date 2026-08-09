COMMENT=	unicode grapheme helpers

CATEGORIES=	textproc

MODPY_DISTV=	0.10.0
DISTNAME=	graphemeu-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

HOMEPAGE=	https://graphemeu.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

TEST_DEPENDS=	devel/py-test-cov

MODPY_TEST_ARGS= --cov=grapheme tests

.include <bsd.port.mk>
