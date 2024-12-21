COMMENT=	common base representation of Python source code

# py-astroid and pylint usually need keeping in-sync
MODPY_DISTV=	3.1.0
DISTNAME=	astroid-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

CATEGORIES=	devel

MAINTAINER=	Daniel Dickman <daniel@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-typing-extensions

.include <bsd.port.mk>
