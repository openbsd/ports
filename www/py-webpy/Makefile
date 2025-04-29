COMMENT=	web framework for python

MODPY_DISTV=	0.70
GH_ACCOUNT =	webpy
GH_PROJECT =	webpy
GH_TAGNAME =	webpy-${MODPY_DISTV}
DISTNAME=	webpy-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	www

HOMEPAGE=	http://webpy.org

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Public Domain, except wsgiserver
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PYBUILD =	setuptools

RUN_DEPENDS=	www/py-cheroot \
		www/py-multipart

.include <bsd.port.mk>
