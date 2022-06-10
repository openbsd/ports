COMMENT=		character encoding auto-detection in Python

MODPY_EGG_VERSION=	4.0.0
DISTNAME=		chardet-${MODPY_EGG_VERSION}
PKGNAME=		py-chardet-${MODPY_EGG_VERSION}
REVISION=		3

CATEGORIES=		textproc

HOMEPAGE=		https://github.com/chardet/chardet

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

TEST_DEPENDS =		devel/py-hypothesis${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
