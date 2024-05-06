COMMENT =	framework to protect supply chain integrity

MODPY_EGG_VERSION =	1.2.0

DISTNAME =	in-toto-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	3

CATEGORIES =	security

HOMEPAGE =	https://in-toto.io/

MAINTAINER =	George Rosamond <george@nycbug.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVOR =		python3
FLAVORS =		python3

RUN_DEPENDS =		devel/py-attrs${MODPY_FLAVOR} \
			devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-pathspec${MODPY_FLAVOR} \
			security/py-securesystemslib${MODPY_FLAVOR} \
			textproc/py-iso8601${MODPY_FLAVOR}

pre-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
