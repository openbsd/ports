COMMENT =	interact with keepass databases from Python

MODPY_EGG_VERSION =	4.0.1
REVISION =	1

DISTNAME =	pykeepass-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	security

HOMEPAGE =	https://github.com/libkeepass/pykeepass

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
NO_TEST =		Yes
# tests are not included in pypi tarballs; with a git checkout you can use
#MODPY_PYTEST_ARGS =tests/tests.py

RUN_DEPENDS =	devel/py-construct${MODPY_FLAVOR} \
		devel/py-dateutil${MODPY_FLAVOR} \
		devel/py-future${MODPY_FLAVOR} \
		security/py-argon2-cffi${MODPY_FLAVOR} \
		security/py-cryptodome${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR}

.include <bsd.port.mk>
