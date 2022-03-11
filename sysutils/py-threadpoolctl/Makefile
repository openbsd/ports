COMMENT =	introspect/set max threads in native libraries like BLAS

MODPY_EGG_VERSION =	3.0.0
DISTNAME =		threadpoolctl-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/joblib/threadpoolctl

# BSD-3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR  =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

post-extract:
	sed -i 's/python/python${MODPY_VERSION}/g' \
		${WRKSRC}/tests/test_threadpoolctl.py

.include <bsd.port.mk>
