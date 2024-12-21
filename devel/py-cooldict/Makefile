COMMENT =	some useful dict-like structures

MODPY_DISTV =	1.4
DISTNAME =	cooldict-1.04
PKGNAME =	py-${DISTNAME}
REVISION =	6

CATEGORIES =	devel

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =	https://github.com/zardus/cooldict

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-ana

# tests fail:
# ana.errors.ANAError: SimpleDataLayer does not support state loading. 
do-test:
	cd ${WRKSRC} && PYTHONPATH=. ${MODPY_BIN} cooldict.py

.include <bsd.port.mk>
