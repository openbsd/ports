COMMENT =		sign JSON with Ed25519 signatures

MODPY_EGG_VERSION =	1.1.4
DISTNAME =		signedjson-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		textproc

MAINTAINER =		Renaud Allard <renaud@allard.it>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm
FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		textproc/py-canonicaljson${MODPY_FLAVOR} \
			textproc/py-unpaddedbase64${MODPY_FLAVOR} \
			security/py-PyNaCl${MODPY_FLAVOR}

.include <bsd.port.mk>
