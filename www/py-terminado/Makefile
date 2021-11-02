# $OpenBSD: Makefile,v 1.13 2021/11/02 00:02:55 sthen Exp $

COMMENT =		terminals served to term.js using Tornado websockets

MODPY_EGG_VERSION =	0.8.3
DISTNAME =		terminado-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		www

HOMEPAGE =		https://github.com/takluyver/terminado

# BSD
PERMIT_PACKAGE =	Yes

FIX_CRLF_FILES =	terminado/tests/basic_test.py

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	terminado

RUN_DEPENDS +=		devel/py-ptyprocess${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}>=4

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
