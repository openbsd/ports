COMMENT =		client lib to access B2 cloud storage

# optional dep for duplicity; there's a problem with newer versions so holding at
# 1.18.0 for now. https://gitlab.com/duplicity/duplicity/-/issues/701
MODPY_EGG_VERSION =	1.18.0
DISTNAME =		b2sdk-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel net
REVISION =		0

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

# Tests require a Backblaze account and network connectivity
NO_TEST =		Yes

RUN_DEPENDS =		devel/py-arrow${MODPY_FLAVOR} \
			devel/py-logfury${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			devel/py-tqdm${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
