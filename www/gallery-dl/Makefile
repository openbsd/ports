COMMENT =		CLI program to mass download images from various websites

MODPY_DISTV =		1.28.5
DISTNAME =		gallery_dl-${MODPY_DISTV}
PKGNAME = 		${DISTNAME:S/_/-/}
CATEGORIES =		www
HOMEPAGE =		https://github.com/mikf/gallery-dl/

MAINTAINER =		Stefan Hagen <sh+ports@codevoid.de>

# GPL 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		www/py-requests

TEST_DEPENDS =		devel/py-test

do-test:
	${MODPY_BIN} ${WRKSRC}/scripts/run_tests.py

.include <bsd.port.mk>
