COMMENT=	Python code formatter

MODPY_EGG_VERSION=	23.9.1
DISTNAME=	black-${MODPY_EGG_VERSION}
PKGNAME=	py-black-${MODPY_EGG_VERSION:S/b/beta/}
REVISION=	0

CATEGORIES=	textproc devel

# https://github.com/ambv/black
HOMEPAGE=	https://black.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	hatch-vcs

BUILD_DEPENDS=	devel/py-hatch-fancy-pypi-readme${MODPY_FLAVOR}

RUN_DEPENDS=	devel/py-click${MODPY_FLAVOR}>=8.0.0 \
		devel/py-mypy-extensions${MODPY_FLAVOR}>=0.4.3 \
		devel/py-pathspec${MODPY_FLAVOR}>=0.9.0 \
		devel/py-typing-extensions${MODPY_FLAVOR}>=4.0.1 \
		sysutils/py-packaging${MODPY_FLAVOR}>=22.0 \
		sysutils/py-platformdirs${MODPY_FLAVOR}>=2 \
		textproc/py-tomli${MODPY_FLAVOR}>=1.1.0

# also optional at runtime, needed for blackd
TEST_DEPENDS=	www/py-aiohttp${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
