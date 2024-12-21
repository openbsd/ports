COMMENT =		black plugin for the Python Language Server

MODPY_DISTV =	2.0.0
DISTNAME =		python-lsp-black-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		devel

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-python-lsp-server>=1.4.0 \
			textproc/py-black>=23.11.0

NO_TEST =		Yes

.include <bsd.port.mk>
