# $OpenBSD: Makefile,v 1.3 2020/07/03 21:13:01 sthen Exp $

COMMENT=	easy-to-use Modbus RTU/ASCII implementation for Python

MODPY_EGG_VERSION=	1.0.2
DISTNAME=		minimalmodbus-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		net
REVISION=		0

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

# requires dummy_serial.py from github
NO_TEST=		Yes
TEST_DEPENDS=		devel/py-coveralls${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR}

.include <bsd.port.mk>
