# $OpenBSD: Makefile,v 1.7 2021/10/29 15:38:50 sthen Exp $

COMMENT =		PEG Parser-Interpreter in Python

MODPY_EGG_VERSION =	2.15.2
DISTNAME =		pyPEG2-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^py/${MODPY_PY_PREFIX}/}
REVISION =		3

CATEGORIES =		textproc

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	pypeg2

FLAVORS =		python3
FLAVOR =	python3

.include <bsd.port.mk>
