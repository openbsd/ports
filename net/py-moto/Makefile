COMMENT =	library to mock out AWS services for tests

MODPY_DISTV =	4.1.15
DISTNAME =	moto-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	net

MAINTAINER =	Daniel Dickman <daniel@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-openapi-spec-validator \
			net/py-botocore \
			security/py-cryptography \
			textproc/py-xmltodict \
			www/py-jinja2 \
			www/py-responses \
			www/py-requests \
			www/py-werkzeug

# needs aws_xray_sdk, jose, jsondiff
TEST_DEPENDS =		devel/py-freezegun \
			devel/py-docker \
			devel/py-parsing \
			net/py-boto3 \
			www/py-flask-cors

.include <bsd.port.mk>
