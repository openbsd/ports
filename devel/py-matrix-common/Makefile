# $OpenBSD: Makefile,v 1.1.1.1 2022/02/15 04:26:15 abieber Exp $

COMMENT =		common utilities for Synapse, Sydent and Sygnal

MODPY_EGG_VERSION =	1.1.0

DISTNAME =		matrix_common-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/matrix-org/matrix-python-common

# Apache 2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-attrs${MODPY_FLAVOR}

.include <bsd.port.mk>
