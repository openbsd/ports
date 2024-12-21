COMMENT =	framework to protect supply chain integrity

MODPY_DISTV =	1.2.0

DISTNAME =	in-toto-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	4

CATEGORIES =	security

HOMEPAGE =	https://in-toto.io/

MAINTAINER =	George Rosamond <george@nycbug.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-attrs \
			devel/py-dateutil \
			devel/py-pathspec \
			security/py-securesystemslib \
			textproc/py-iso8601

pre-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
