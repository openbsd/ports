COMMENT=	Python logging made (stupidly) simple

MODPY_DISTV=	0.7.3
DISTNAME=	loguru-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/Delgan/loguru/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

# tests got dropped from pypi sdist when upstream moved to flit_core
NO_TEST=	Yes
#TEST_DEPENDS=	devel/py-colorama \
#		devel/py-freezegun \
#		devel/py-mypy \
#		devel/py-test-cov

.include <bsd.port.mk>
