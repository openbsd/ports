COMMENT=	AMQP client library for Python

MODPY_DISTV=	1.4.4
GH_ACCOUNT=	pika
GH_PROJECT=	pika
GH_TAGNAME=	${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	net

# https://github.com/pika/pika
HOMEPAGE=	https://pika.readthedocs.io/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

# tests need rabbitmq running (config not needed)
TEST_DEPENDS=	devel/py-test-cov \
		devel/py-test-timeout \
		www/py-tornado \
		devel/py-twisted \
		devel/py-gevent

.include <bsd.port.mk>
