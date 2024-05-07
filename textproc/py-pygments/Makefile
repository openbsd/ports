COMMENT=	Python syntax highlighter

MODPY_EGG_VERSION = 2.18.0

DISTNAME=	pygments-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc devel

HOMEPAGE=	https://pygments.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI =	Yes
MODPY_PYBUILD =	hatchling

# requires port for wcag_contrast_ratio
MODPY_PYTEST_ARGS =	--ignore tests/contrast/test_contrasts.py

TEST_DEPENDS =	textproc/py-lxml${MODPY_FLAVOR}

.include <bsd.port.mk>
