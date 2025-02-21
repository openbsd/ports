COMMENT=	easy-to-use Modbus RTU/ASCII implementation for Python

MODPY_DISTV=	2.1.1
DISTNAME=	minimalmodbus-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	net
REVISION=	2

HOMEPAGE=	https://github.com/pyhys/minimalmodbus

MAINTAINER=	Martin Reindl <martin@catai.org>

# Apache License, Version 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-serial

TEST_DEPENDS=	devel/py-coveralls \
		devel/py-test-cov

.include <bsd.port.mk>
