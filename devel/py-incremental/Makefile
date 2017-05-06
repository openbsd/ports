# $OpenBSD: Makefile,v 1.1.1.1 2017/05/06 09:46:48 landry Exp $

COMMENT =		versioning library for Python projects

MODPY_EGG_VERSION =	16.10.1

DISTNAME =		incremental-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

#TEST_DEPENDS =		devel/py-click${MODPY_FLAVOR} \
#			devel/py-test${MODPY_FLAVOR} \
#			devel/py-twisted${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

TEST_ENV =		LC_CTYPE=en_US.UTF-8
## N.B. enable test after devel/py-twisted upgrade
NO_TEST =		Yes

do-test:
	cd ${WRKSRC}/src/incremental && ${SETENV} ${TEST_ENV} ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
