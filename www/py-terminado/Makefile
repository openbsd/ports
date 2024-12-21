COMMENT =		terminals served to term.js using Tornado websockets

MODPY_DISTV =	0.16.0
DISTNAME =		terminado-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		www

HOMEPAGE =		https://github.com/takluyver/terminado

# BSD
PERMIT_PACKAGE =	Yes

FIX_CRLF_FILES =	terminado/tests/basic_test.py

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling
#MODPY_PYTEST_ARGS =	terminado

RUN_DEPENDS +=		devel/py-ptyprocess \
			www/py-tornado>=4

.include <bsd.port.mk>
