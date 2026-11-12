COMMENT=	common base representation of Python source code

# py-astroid and pylint usually need keeping in-sync
MODPY_DISTV=	4.3.4
DISTNAME=	astroid-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

HOMEPAGE=	https://github.com/PyCQA/astroid

CATEGORIES=	devel

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

TEST_DEPENDS=	devel/py-mypy

.include <bsd.port.mk>
