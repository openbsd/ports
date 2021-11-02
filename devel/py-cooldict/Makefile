# $OpenBSD: Makefile,v 1.5 2021/11/02 00:00:47 sthen Exp $

COMMENT =	some useful dict-like structures

MODPY_EGG_VERSION =	1.04
DISTNAME =	cooldict-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	2

CATEGORIES =	devel

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =	https://github.com/zardus/cooldict

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =	python3

RUN_DEPENDS =		devel/py-ana${MODPY_FLAVOR}

# tests fail:
# ana.errors.ANAError: SimpleDataLayer does not support state loading. 
do-test:
	cd ${WRKSRC} && PYTHONPATH=. ${MODPY_BIN} cooldict.py

.include <bsd.port.mk>
