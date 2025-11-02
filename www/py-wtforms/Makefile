COMMENT=	flexible forms validation and rendering library

MODPY_DISTV=	3.2.1
DISTNAME=	wtforms-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	2

CATEGORIES=	www

# https://github.com/pallets-eco/wtforms
HOMEPAGE=	https://wtforms.readthedocs.io/

MAINTAINER =	Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

BUILD_DEPENDS=	devel/py-babel \
		devel/py-setuptools

RUN_DEPENDS=	devel/py-dateutil \
		mail/py-email-validator

.include <bsd.port.mk>
