COMMENT =		FTP server library for Python

MODPY_DISTV =		2.2.0
DISTNAME =		pyftpdlib-${MODPY_DISTV}
PKGNAME =		py-ftpdlib-${MODPY_DISTV}

CATEGORIES =		net devel

HOMEPAGE =		https://github.com/giampaolo/pyftpdlib

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

RUN_DEPENDS =		net/py-pyasynchat
TEST_DEPENDS =		devel/py-test-instafail \
			devel/py-test-xdist \
			security/py-openssl \
			sysutils/py-psutil

.include <bsd.port.mk>
