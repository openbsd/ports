COMMENT=	extensions for python-markdown

MODPY_DISTV=	10.14.3
DISTNAME=	pymdown_extensions-${MODPY_DISTV}
PKGNAME=	py-mdown-extensions-${MODPY_DISTV}

CATEGORIES=	textproc
HOMEPAGE =	https://facelessuser.github.io/pymdown-extensions/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling

RUN_DEPENDS=	textproc/py-markdown \
		textproc/py-pygments \
		textproc/py-yaml

.include <bsd.port.mk>
