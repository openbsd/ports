COMMENT =		components for JupyterLab and similar applications

MODPY_DISTV =		2.28.0
DISTNAME =		jupyterlab_server-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

HOMEPAGE =		https://jupyterlab-server.readthedocs.io

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

RUN_DEPENDS =		devel/py-babel>=2.10 \
			devel/py-jsonschema>=4.18.0 \
			devel/py-jupyter_server>=1.21,<3 \
			sysutils/py-packaging>=21.3 \
			textproc/py-json5>=0.9.0 \
			www/py-requests>=2.31 \
			www/py-jinja2>=3.0.3

TEST_DEPENDS =		devel/py-ipykernel \
			devel/py-strict_rfc3339 \
			devel/py-test-console-scripts \
			devel/py-test-cov \
			devel/py-test-jupyter \
			devel/py-test-timeout \
			textproc/py-ruamel.yaml \
			www/py-openapi-core \
			www/py-requests-mock

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
