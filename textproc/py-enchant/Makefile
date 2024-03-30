COMMENT=		spellchecking library for Python

MODPY_EGG_VERSION=	3.2.2
DISTNAME=		pyenchant-${MODPY_EGG_VERSION}
PKGNAME=		py-enchant-${MODPY_EGG_VERSION}
REVISION=		3

CATEGORIES=		textproc

HOMEPAGE=		https://pyenchant.github.io/pyenchant/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools
MODPY_PYTEST_ARGS=	enchant/tests.py

RUN_DEPENDS=		textproc/enchant2

FLAVORS=		python3
FLAVOR=			python3

.include <bsd.port.mk>
