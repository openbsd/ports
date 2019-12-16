# $OpenBSD: Makefile,v 1.1.1.1 2019/12/16 13:36:25 kmos Exp $

COMMENT =		json-rpc client library for Transmission

MODPY_EGG_VERSION =	0.14.0
DISTNAME =		transmissionrpc-ng-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		net

HOMEPAGE =		https://github.com/0x022b/transmissionrpc-ng
MAINTAINER =		Paco Esteban <paco@onna.be>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	test/*.py

RUN_DEPENDS =		net/py-curl${MODPY_FLAVOR}

.include <bsd.port.mk>
