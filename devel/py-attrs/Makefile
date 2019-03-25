# $OpenBSD: Makefile,v 1.3 2019/03/25 14:29:50 kn Exp $

COMMENT =		classes without boilerplate

MODPY_EGG_VERSION =	17.4.0

DISTNAME =		attrs-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://www.attrs.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

TEST_DEPENDS =		devel/py-hypothesis${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/py-zopeinterface${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

TEST_ENV +=		PYTHONPATH=${WRKSRC}/lib

.include <bsd.port.mk>
