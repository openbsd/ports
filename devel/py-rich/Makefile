COMMENT=	Python library for rich text and beautiful formatting

MODPY_DISTV=	15.0.0
DISTNAME=	rich-${MODPY_DISTV}
PKGNAME=	py-rich-${MODPY_DISTV}

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

HOMEPAGE=	https://github.com/Textualize/rich
# https://rich.readthedocs.io/
MODULES=	lang/python
MODPY_PI=	Yes

MODPY_PYBUILD=	poetry-core
NO_TEST=	Yes

RUN_DEPENDS=	textproc/py-markdown-it \
		textproc/py-pygments

.include <bsd.port.mk>
