# $OpenBSD: Makefile,v 1.9 2019/07/12 20:51:04 sthen Exp $

COMMENT=		WSDL parsing services package for Python

MODPY_EGG_VERSION=	0.4.4
DISTNAME=		wstools-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		www
REVISION=		1

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS =		python3
FLAVOR ?=

BUILD_DEPENDS=		devel/py-six${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}

# Tests are not provided in pypi tarball
NO_TEST=		Yes

.include <bsd.port.mk>
