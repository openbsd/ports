COMMENT=	ctypes-based simple MagickWand API binding for Python

MODPY_DISTV=	0.7.2
REVISION=	0
DISTNAME=	wand-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

# https://github.com/emcconville/wand
# https://docs.wand-py.org/en/latest/changes.html
HOMEPAGE=	https://docs.wand-py.org/

CATEGORIES=	graphics

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	graphics/ImageMagick

.include <bsd.port.mk>
