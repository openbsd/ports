COMMENT =		sign JSON with Ed25519 signatures

MODPY_DISTV =	1.1.4
DISTNAME =		signedjson-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		textproc

MAINTAINER =		Renaud Allard <renaud@allard.it>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS =		textproc/py-canonicaljson \
			textproc/py-unpaddedbase64 \
			security/py-PyNaCl

.include <bsd.port.mk>
