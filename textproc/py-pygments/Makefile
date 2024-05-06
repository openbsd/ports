COMMENT=	Python syntax highlighter

MODPY_EGG_VERSION = 2.16.1

DISTNAME=	Pygments-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:L:S/^/py-/}
CATEGORIES=	textproc devel
REVISION=	0

HOMEPAGE=	https://pygments.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

# requires port for wcag_contrast_ratio
MODPY_PYTEST_ARGS =	--ignore tests/contrast/test_contrasts.py

TEST_DEPENDS =	textproc/py-lxml${MODPY_FLAVOR}

.include <bsd.port.mk>
