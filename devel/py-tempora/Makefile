# $OpenBSD: Makefile,v 1.3 2020/07/03 21:12:50 sthen Exp $

COMMENT =		objects and routines pertaining to date and time

MODPY_EGG_VERSION =	1.14.1
REVISION =		1
DISTNAME =		tempora-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/jaraco/tempora

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}>=1.15.0
RUN_DEPENDS =	 	devel/py-jaraco-functools${MODPY_FLAVOR}>=1.2.0 \
			devel/py-six${MODPY_FLAVOR} \
			devel/py-tz${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

post-install:
	mv ${PREFIX}/bin/calc-prorate \
		${PREFIX}/bin/calc-prorate${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
