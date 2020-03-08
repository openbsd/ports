# $OpenBSD: Makefile,v 1.1.1.1 2020/03/08 16:46:03 landry Exp $

COMMENT =		sign JSON with Ed25519 signatures

MODPY_EGG_VERSION =	1.1
DISTNAME =		signedjson-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

MAINTAINER =		Renaud Allard <renaud@allard.it>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		textproc/py-canonicaljson${MODPY_FLAVOR} \
			textproc/py-unpaddedbase64${MODPY_FLAVOR} \
			security/py-libnacl${MODPY_FLAVOR}

.include <bsd.port.mk>
