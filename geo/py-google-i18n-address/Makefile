COMMENT=	validation helpers for Google's i18n address database

MODPY_EGG_VERSION=	3.1.0

DISTNAME=	google_i18n_address-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:S/_/-/g}
REVISION=	0

CATEGORIES=	geo

HOMEPAGE=	https://github.com/mirumee/google-i18n-address

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling
NO_TEST=	Yes

FLAVOR=		python3
FLAVORS=	python3

RUN_DEPENDS=	www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
