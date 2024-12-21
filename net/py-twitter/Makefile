COMMENT=	twitter python module

MODPY_DISTV=	1.18.0
DISTNAME=	twitter-${MODPY_DISTV}
PKGNAME=	py-twitter-${MODPY_DISTV}
REVISION=	5

CATEGORIES=	net www

HOMEPAGE=	https://mike.verdone.ca/twitter/
MAINTAINER=	Daniel Winters <daniel@tydirium.org>

# MIT
PERMIT_PACKAGE=	Yes

MODPY_PI=	Yes

MODULES=	lang/python

MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	net/py-irclib
BUILD_DEPENDS=	${RUN_DEPENDS}
TEST_DEPENDS=	devel/py-nose

.include <bsd.port.mk>
