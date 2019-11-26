# $OpenBSD: Makefile,v 1.5 2019/11/26 00:56:18 kmos Exp $

COMMENT =		PEG Parser-Interpreter in Python

MODPY_EGG_VERSION =	2.15.2
DISTNAME =		pyPEG2-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^py/${MODPY_PY_PREFIX}/}
REVISION =		1

CATEGORIES =		textproc

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	pypeg2

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
