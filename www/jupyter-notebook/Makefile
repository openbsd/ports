COMMENT =		web-based notebook for interactive computing

MODPY_DISTV =	6.4.13
DISTNAME =		notebook-${MODPY_DISTV}
PKGNAME =		jupyter-notebook-${MODPY_DISTV}
REVISION =		2

CATEGORIES =		www devel

HOMEPAGE =		https://jupyter.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		jupyter_packaging
# XXX skip selenium tests as recommended
MODPY_PYTEST_ARGS =	--ignore notebook/tests/selenium

RUN_DEPENDS =		devel/py-ipykernel \
			devel/py-ipython_genutils \
			devel/py-jupyter_client>=5.3.4 \
			devel/py-jupyter_core>=4.6.1 \
			devel/py-nbconvert>=5 \
			devel/py-nbformat \
			devel/py-nest-asyncio>=1.5 \
			devel/py-send2trash>=1.8.0 \
			devel/py-traitlets>=4.2.1 \
			net/py-zmq>=17 \
			security/py-argon2-cffi \
			sysutils/py-prometheus_client \
			www/py-jinja2 \
			www/py-terminado>=0.8.3 \
			www/py-tornado>=6.1

TEST_DEPENDS =		devel/py-coverage \
			devel/py-nbval \
			devel/py-test-cov \
			devel/py-testpath \
			www/py-requests \
			www/py-requests-unixsocket \
			www/py-selenium

# XXX once we have a port of pandoc, we can make docs.

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
