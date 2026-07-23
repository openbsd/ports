COMMENT =		key/value store implementation in Python

MODPY_DISTV =		0.5.5
DISTNAME =		borgstore-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		databases

HOMEPAGE =		https://github.com/borgbackup/borgstore

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools_scm
MODPY_PI =		Yes

RUN_DEPENDS =		www/py-requests

# tests not included in pypi tarball
NO_TEST	=		Yes

.include <bsd.port.mk>
