COMMENT=	web framework for python

MODPY_DISTV=	0.61
DISTNAME=	web.py-${MODPY_DISTV}
PKGNAME=	py-webpy-${MODPY_DISTV}
REVISION=	5

CATEGORIES=	www

HOMEPAGE=	http://webpy.org

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Public Domain, except wsgiserver
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS=	www/py-cheroot

.include <bsd.port.mk>
