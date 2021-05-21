# $OpenBSD: Makefile,v 1.12 2021/05/21 19:50:30 kmos Exp $

COMMENT =		virtualenv-based automation of test activities

MODPY_EGG_VERSION =	2.6.0
DISTNAME =		tox-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		3

HOMEPAGE =		https://tox.readthedocs.io/en/latest/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-py${MODPY_FLAVOR} \
			devel/py-pluggy${MODPY_FLAVOR} \
			devel/py-virtualenv${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

# some tests need HOME to be writable
PORTHOME =		/tmp

post-install:
	mv ${PREFIX}/bin/tox ${PREFIX}/bin/tox${MODPY_BIN_SUFFIX}
	mv ${PREFIX}/bin/tox-quickstart ${PREFIX}/bin/tox-quickstart${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
