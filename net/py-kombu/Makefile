COMMENT=	messaging library for Python

MODPY_DISTV=	5.6.2
DISTNAME=	kombu-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	net

# https://github.com/celery/kombu
HOMEPAGE=	https://docs.celeryq.dev/projects/kombu/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

MODPY_PYTEST_IGNORE= \
		t/unit/transport/test_gcpubsub.py \
		t/unit/transport/test_azurestoragequeues.py

RUN_DEPENDS=	devel/py-tzdata \
		devel/py-vine \
		net/py-amqp<6.0.0

# needs azure, google, py-test-freezer, py-test-sugar
TEST_DEPENDS=	devel/pre-commit \
		devel/py-hypothesis \
		net/py-botocore

.include <bsd.port.mk>
