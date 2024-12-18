COMMENT=	automatically upgrade syntax for newer versions of Python

MODPY_EGG_VERSION= 3.19.1
DISTNAME=	pyupgrade-${MODPY_EGG_VERSION}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/asottile/pyupgrade

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
SITES=		https://files.pythonhosted.org/packages/35/3a/efa8e75cf84d53f1b3f0113387ab120ef460396a4068e41b6cf18a3d216d/

MODPY_PYBUILD=	setuptools
NO_TEST=	Yes

RUN_DEPENDS=	devel/py-tokenize-rt${MODPY_FLAVOR}

.include <bsd.port.mk>
