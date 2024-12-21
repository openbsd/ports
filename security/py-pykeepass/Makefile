COMMENT =	interact with keepass databases from Python

MODPY_DISTV =	4.0.6

DISTNAME =	pykeepass-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	security
REVISION =	2

HOMEPAGE =	https://github.com/libkeepass/pykeepass

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =	setuptools
NO_TEST =		Yes
# tests are not included in pypi tarballs; with a git checkout you can use
#MODPY_PYTEST_ARGS =tests/tests.py

RUN_DEPENDS =	devel/py-construct \
		devel/py-dateutil \
		security/py-argon2-cffi \
		security/py-cryptodomex \
		textproc/py-lxml

.include <bsd.port.mk>
