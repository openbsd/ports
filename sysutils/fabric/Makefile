COMMENT =		simple, pythonic tool for remote execution and deployment

MODPY_DISTV =		2.6.0
DISTNAME =		fabric-${MODPY_DISTV}
REVISION =		5

CATEGORIES =		sysutils

HOMEPAGE =		https://www.fabfile.org/

MAINTAINER =		Pablo Mendez Hernandez <pablomh@gmail.com>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		security/py-paramiko \
			devel/py-decorator \
			devel/py-invoke
TEST_DEPENDS =		www/py-jinja2 \
			devel/py-test-relaxed \
			devel/py-mock

PORTHOME =		${WRKSRC}
MODPY_PYTEST_ARGS =	tests

.include <bsd.port.mk>
