COMMENT =		ruff linting plugin for pylsp

MODPY_DISTV =		2.3.0
DISTNAME =		python_lsp_ruff-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/g}

CATEGORIES =		devel

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/ruff \
			devel/py-cattrs \
			devel/py-python-lsp-server \
			devel/py-lsprotocol

PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
