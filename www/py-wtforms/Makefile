COMMENT=	flexible forms validation and rendering library

MODPY_DISTV=	3.2.1
DISTNAME=	wtforms-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

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

RUN_DEPENDS=	devel/py-dateutil

# optional rdep email_validator (not ported) needed for some tests
# https://pypi.org/project/email-validator/
MODPY_PYTEST_ARGS= --ignore tests/validators/test_email.py

.include <bsd.port.mk>
