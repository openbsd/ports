COMMENT=	simple integration of Flask and WTForms

MODPY_DISTV=	1.2.2
DISTNAME=	flask_wtf-${MODPY_DISTV}
PKGNAME=	py-flask-wtf-${MODPY_DISTV}
REVISION=	0

CATEGORIES=	www

MAINTAINER =	Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling

RUN_DEPENDS=	www/py-flask \
		www/py-wtforms

.include <bsd.port.mk>
