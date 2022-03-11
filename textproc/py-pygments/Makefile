COMMENT=	Python syntax highlighter

MODPY_EGG_VERSION = 2.11.2

DISTNAME=	Pygments-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:L:S/^/py-/}
CATEGORIES=	textproc devel

HOMEPAGE=	https://pygments.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

TEST_DEPENDS =	textproc/py-lxml${MODPY_FLAVOR}

# requires port for wcag_contrast_ratio
NO_TEST=	Yes

.include <bsd.port.mk>
