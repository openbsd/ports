COMMENT=		query APIs via SQL

MODPY_DISTV =		1.4.3
DISTNAME =		shillelagh-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		databases

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS =		databases/py-apsw \
			databases/py-sqlalchemy \
			devel/py-appdirs \
			devel/py-dateutil \
			www/py-requests-cache

# XXX: needs fakefs
TEST_DEPENDS =		devel/py-freezegun \
			devel/py-test-cov \
			devel/py-test-mock \
			net/py-boto3 \
			net/py-botocore \
			security/py-google-auth \
			sysutils/py-psutil \
			textproc/py-defusedxml \
			www/py-requests-mock \
			www/py-yarl

.include <bsd.port.mk>
