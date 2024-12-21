COMMENT=	Python code formatter

MODPY_DISTV=	24.4.2
DISTNAME=	black-${MODPY_DISTV}
PKGNAME=	py-black-${MODPY_DISTV:S/b/beta/}
REVISION=	0

CATEGORIES=	textproc devel

# https://github.com/psf/black
HOMEPAGE=	https://black.readthedocs.io/

MAINTAINER=	Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatch-vcs

# compiled version can optionally be built, but requires additional deps in
# fairly specific versions: hatch-mypyc>=0.16.0, mypy==1.7.1, click==8.1.3
BUILD_DEPENDS=	devel/py-hatch-fancy-pypi-readme

RUN_DEPENDS=	devel/py-click>=8.0.0 \
		devel/py-mypy-extensions>=0.4.3 \
		devel/py-pathspec>=0.9.0 \
		sysutils/py-packaging>=22.0 \
		sysutils/py-platformdirs>=2

TEST_DEPENDS=	www/py-aiohttp

.include <bsd.port.mk>
