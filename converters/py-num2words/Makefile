COMMENT =	convert numbers to words

MODPY_DISTV =	0.5.14
DISTNAME=	num2words-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	converters

HOMEPAGE=	https://github.com/savoirfairelinux/num2words

# LGPL
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools
# needs delegator.py
MODPY_PYTEST_ARGS=	--ignore tests/test_cli.py

TEST_DEPENDS=		devel/py-docopt

.include <bsd.port.mk>
