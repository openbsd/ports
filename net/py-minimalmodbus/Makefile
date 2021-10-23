# $OpenBSD: Makefile,v 1.6 2021/09/09 08:49:04 martin Exp $

COMMENT=	easy-to-use Modbus RTU/ASCII implementation for Python

MODPY_EGG_VERSION=	2.0.1
DISTNAME=		minimalmodbus-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		net

HOMEPAGE=		https://github.com/pyhys/minimalmodbus

MAINTAINER=		Martin Reindl <martin@catai.org>

# Apache License, Version 2.0
PERMIT_PACKAGE=		Yes

MODPY_SETUPTOOLS=	Yes
MODPY_PI=		Yes
MODPY_PYTEST=		Yes

MODULES=		lang/python

FLAVORS=		python3
FLAVOR =		python3

RUN_DEPENDS=		devel/py-serial${MODPY_FLAVOR}

TEST_DEPENDS=		devel/py-coveralls${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR}

.include <bsd.port.mk>
