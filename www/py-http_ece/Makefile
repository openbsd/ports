MODPY_DISTV =	1.1.0
COMMENT =		encrypted Content Encoding for HTTP
DISTNAME =		http_ece-${MODPY_DISTV}
PKGNAME =		py-http_ece-${MODPY_DISTV}
CATEGORIES =		www
REVISION =		7

HOMEPAGE =		https://github.com/martinthomson/encrypted-content-encoding
MAINTAINER =		Pamela Mosiejczuk <pamela@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

RUN_DEPENDS =		security/py-cryptography

NO_TEST=		Yes

.include <bsd.port.mk>
