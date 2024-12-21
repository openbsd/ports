COMMENT=		spellchecking library for Python

MODPY_DISTV=	3.2.2
DISTNAME=		pyenchant-${MODPY_DISTV}
PKGNAME=		py-enchant-${MODPY_DISTV}
REVISION=		5

CATEGORIES=		textproc

HOMEPAGE=		https://pyenchant.github.io/pyenchant/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools
MODPY_PYTEST_ARGS=	enchant/tests.py

RUN_DEPENDS=		textproc/enchant2

.include <bsd.port.mk>
