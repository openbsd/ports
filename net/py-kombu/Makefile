COMMENT=	messaging library for Python

MODPY_DISTV =	5.5.2
DISTNAME=	kombu-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	net

MAINTAINER =	Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

RUN_DEPENDS =		devel/py-tzdata \
			devel/py-vine \
			net/py-amqp<6.0.0

# needs azure, google, py-test-freezer, py-test-sugar
TEST_DEPENDS =		devel/pre-commit \
			devel/py-hypothesis

.include <bsd.port.mk>
