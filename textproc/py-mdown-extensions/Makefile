COMMENT=	extensions for python-markdown

MODPY_EGG_VERSION=	10.12
DISTNAME=	pymdown_extensions-${MODPY_EGG_VERSION}
PKGNAME=	py-mdown-extensions-${MODPY_EGG_VERSION}

CATEGORIES=	textproc
HOMEPAGE =	https://facelessuser.github.io/pymdown-extensions/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	textproc/py-markdown${MODPY_FLAVOR} \
		textproc/py-pygments${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR}

.include <bsd.port.mk>
