COMMENT=		query APIs via SQL

MODPY_DISTV =		1.4.5
DISTNAME =		shillelagh-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		databases

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS =		databases/py-apsw \
			databases/py-sqlalchemy \
			devel/py-appdirs \
			devel/py-dateutil \
			devel/py-typing-extensions \
			www/py-requests \
			www/py-requests-cache

# XXX: also needs pyfakefs, pytest-integration, sqlglot, multicorn and probably more
NO_TEST =		Yes
TEST_DEPENDS =		devel/py-freezegun \
			devel/py-holidays \
			devel/py-prison \
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
