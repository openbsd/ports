COMMENT=	markdown parsing for Python, port of markdown-it

MODPY_EGG_VERSION=	2.2.0
DISTNAME=	markdown-it-py-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:S/-py//}
CATEGORIES=	textproc
REVISION=	0

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	flit_core

# not in pypi tarball
NO_TEST=	Yes
RUN_DEPENDS=	textproc/py-mdurl${MODPY_FLAVOR}

.include <bsd.port.mk>
