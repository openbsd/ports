COMMENT =	convert numbers to words

MODPY_EGG_VERSION =	0.5.13
DISTNAME=	num2words-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	converters

HOMEPAGE=	https://github.com/savoirfairelinux/num2words

# LGPL
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools
# needs delegator.py
MODPY_PYTEST_ARGS=	--ignore tests/test_cli.py

TEST_DEPENDS=		devel/py-docopt${MODPY_FLAVOR}

.include <bsd.port.mk>
