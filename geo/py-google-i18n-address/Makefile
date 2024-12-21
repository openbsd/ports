COMMENT=	validation helpers for Google's i18n address database

MODPY_DISTV=	3.1.0

DISTNAME=	google_i18n_address-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/g}
REVISION=	1

CATEGORIES=	geo

HOMEPAGE=	https://github.com/mirumee/google-i18n-address

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling
NO_TEST=	Yes

RUN_DEPENDS=	www/py-requests

.include <bsd.port.mk>
