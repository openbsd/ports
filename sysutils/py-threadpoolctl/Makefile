# $OpenBSD: Makefile,v 1.1.1.1 2020/10/27 21:48:03 daniel Exp $

COMMENT =	introspect/set max threads in native libraries like BLAS

MODPY_EGG_VERSION =	2.1.0
DISTNAME =		threadpoolctl-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/joblib/threadpoolctl

# BSD-3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR  =		python3

post-extract:
	sed -i 's/python/python${MODPY_VERSION}/g' \
		${WRKSRC}/tests/test_threadpoolctl.py

.include <bsd.port.mk>
