COMMENT=		Python API and tools to manipulate OpenDocument files

MODPY_EGG_VERSION=	1.4.1
DISTNAME=		odfpy-${MODPY_EGG_VERSION}
PKGNAME=		py-odfpy-${MODPY_EGG_VERSION}
REVISION=		2

CATEGORIES=		textproc devel

HOMEPAGE=		https://github.com/eea/odfpy

# Apache, GPL, LGPL
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=		Yes

RUN_DEPENDS=		textproc/py-defusedxml${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
