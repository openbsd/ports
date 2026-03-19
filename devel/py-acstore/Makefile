COMMENT =		read and write Attribute Container stores

MODPY_DISTV =		20240407
DISTNAME =		acstore-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

# https://github.com/log2timeline/acstore
HOMEPAGE =		https://acstore.readthedocs.io/

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	tests/*.py

.include <bsd.port.mk>
