# $OpenBSD: Makefile,v 1.1.1.1 2019/07/19 12:20:35 kmos Exp $

COMMENT=	easy-to-use Modbus RTU/ASCII implementation for Python

MODPY_EGG_VERSION=	0.7
DISTNAME=		MinimalModbus-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:L}
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
FLAVOR?=

RUN_DEPENDS=		devel/py-serial${MODPY_FLAVOR}

TEST_DEPENDS=		devel/py-coveralls${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR}

.include <bsd.port.mk>
