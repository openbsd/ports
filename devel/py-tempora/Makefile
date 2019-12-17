# $OpenBSD: Makefile,v 1.1.1.1 2019/12/17 20:57:26 bket Exp $

COMMENT =		objects and routines pertaining to date and time

MODPY_EGG_VERSION =	1.14.1
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
