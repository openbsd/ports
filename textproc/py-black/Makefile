COMMENT=	Python code formatter

MODPY_EGG_VERSION=	23.7.0
DISTNAME=	black-${MODPY_EGG_VERSION}
PKGNAME=	py-black-${MODPY_EGG_VERSION:S/b/beta/}

CATEGORIES=	textproc devel

# https://github.com/ambv/black
HOMEPAGE=	https://black.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	hatch-vcs

BUILD_DEPENDS=	devel/py-hatch-fancy-pypi-readme${MODPY_FLAVOR}

RUN_DEPENDS=	devel/py-click${MODPY_FLAVOR} \
		devel/py-mypy-extensions${MODPY_FLAVOR} \
		devel/py-pathspec${MODPY_FLAVOR} \
		sysutils/py-platformdirs${MODPY_FLAVOR} \
		textproc/py-tomli${MODPY_FLAVOR}
# also optional at runtime, needed for blackd
TEST_DEPENDS=	www/py-aiohttp${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
