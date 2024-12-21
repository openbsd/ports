COMMENT=	parsing toolkit for python

MODPY_DISTV=	1.1.9
DISTNAME=	lark-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	textproc devel

HOMEPAGE=	https://lark-parser.readthedocs.io/en/latest/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

MODPY_PYTEST_ARGS=	--ignore tests/test_nearley

.include <bsd.port.mk>
