COMMENT=	validation helpers for Google's i18n address database

MODPY_EGG_VERSION=	2.5.2

DISTNAME=	google-i18n-address-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	1

CATEGORIES=	geo

HOMEPAGE=	https://github.com/mirumee/google-i18n-address

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD =	setuptools
NO_TEST=	Yes

FLAVOR=		python3
FLAVORS=	python3

RUN_DEPENDS=	www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
