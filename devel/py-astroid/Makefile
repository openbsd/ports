COMMENT=	common base representation of Python source code

# py-astroid and pylint usually need keeping in-sync
MODPY_EGG_VERSION=	3.1.0
DISTNAME=	astroid-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

MAINTAINER=	Daniel Dickman <daniel@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-typing-extensions${MODPY_FLAVOR}

.include <bsd.port.mk>
