COMMENT =		json rpc server library

MODPY_DISTV =	1.1.2
DISTNAME =		python-lsp-jsonrpc-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		net

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS =		textproc/py-ujson>=3.0.0

TEST_DEPENDS =		devel/py-test-cov \
			devel/py-mock

.include <bsd.port.mk>
