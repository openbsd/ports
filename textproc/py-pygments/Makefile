COMMENT=	Python syntax highlighter

MODPY_DISTV=	2.19.1
DISTNAME=	pygments-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc devel

HOMEPAGE=	https://pygments.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling

# requires port for wcag_contrast_ratio
MODPY_PYTEST_ARGS=	--ignore tests/contrast/test_contrasts.py

TEST_DEPENDS=	textproc/py-lxml

.include <bsd.port.mk>
