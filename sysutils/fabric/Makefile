COMMENT =		simple, pythonic tool for remote execution and deployment

MODPY_DISTV =	2.6.0
DISTNAME =		fabric-${MODPY_DISTV}
REVISION =		4

CATEGORIES =		sysutils

HOMEPAGE =		https://www.fabfile.org/

MAINTAINER =		Pablo Mendez Hernandez <pablomh@gmail.com>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		security/py-paramiko \
			devel/py-invoke
TEST_DEPENDS =		www/py-jinja2 \
			devel/py-test-relaxed \
			devel/py-mock

PORTHOME =		${WRKSRC}

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} -m pytest -v -rs \
		-k 'not python_dash_m_acts_like_fab'

.include <bsd.port.mk>
