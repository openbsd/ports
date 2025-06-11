COMMENT=	low-level AMQP client for Python

MODPY_DISTV =	5.3.1
DISTNAME=	amqp-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	net

MAINTAINER=	Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

RUN_DEPENDS =		devel/py-vine>=5.0.0,<6.0.0

.include <bsd.port.mk>
