# $OpenBSD: Makefile,v 1.2 2020/02/13 18:37:58 jasper Exp $

COMMENT=		WSDL parsing services package for Python

MODPY_EGG_VERSION=	0.4.8
DISTNAME=		wstools-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		www

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

BUILD_DEPENDS=		devel/py-pbr${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-pbr${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

.include <bsd.port.mk>
