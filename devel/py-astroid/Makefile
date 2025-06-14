COMMENT=	common base representation of Python source code

# py-astroid and pylint usually need keeping in-sync
MODPY_DISTV=	3.3.10
DISTNAME=	astroid-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

MAINTAINER=	Daniel Dickman <daniel@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

TEST_DEPENDS=	devel/py-mypy

.include <bsd.port.mk>
