COMMENT =	web fuzzer

MODPY_DISTV =	3.1.0
DISTNAME =	wfuzz-${MODPY_DISTV}
REVISION =	4

CATEGORIES =	security www

HOMEPAGE =	https://wfuzz.readthedocs.io/en/latest/

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =		devel/py-parsing \
			devel/py-six \
			net/py-curl \
			textproc/py-chardet

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
