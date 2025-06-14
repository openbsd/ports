COMMENT=	distributed task queue

MODPY_DISTV =		5.5.3
DISTNAME =		celery-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		sysutils

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools
MODPY_PYTEST_ARGS=	--ignore t/unit/backends/test_azureblockblob.py \
			--ignore t/unit/backends/test_gcs.py

RUN_DEPENDS = 	devel/py-billiard>=4.2.1,<5.0 \
		devel/py-click>=8.1.2,<9.0 \
		devel/py-click-didyoumean>=0.3.0 \
		devel/py-click-plugins>=1.1.1 \
		devel/py-click-repl>=0.2.0 \
		devel/py-dateutil>=2.8.2 \
		devel/py-vine>=5.1.0,<6.0 \
		net/py-kombu>=5.5.2,<5.6

TEST_DEPENDS =	devel/py-pydantic \
		devel/py-test-celery \
		devel/py-test-subtests \
		devel/py-test-timeout \
		databases/py-mongo \
		net/py-boto3 \
		net/py-dnspython \
		net/py-moto \
		security/py-cryptography

.include <bsd.port.mk>
