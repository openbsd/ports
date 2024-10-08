COMMENT =		key/value store implementation in Python

MODPY_EGG_VERSION =	0.0.5
DISTNAME =		borgstore-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		databases

HOMEPAGE =		https://github.com/borgbackup/borgstore

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools_scm
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		security/py-paramiko${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

# tests not included in pypi tarball
NO_TEST	=		Yes

.include <bsd.port.mk>
