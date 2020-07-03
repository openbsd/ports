# $OpenBSD: Makefile,v 1.15 2020/07/03 21:12:40 sthen Exp $

COMMENT =		console-based visual debugger for Python

MODPY_EGG_VERSION =	2018.1
DISTNAME =		pudb-${MODPY_EGG_VERSION}
PKGNAME =		py-pudb-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-urwid${MODPY_FLAVOR}>=1.1.1 \
			textproc/py-pygments${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-test-mock${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.if ${FLAVOR:Mpython3}
PUDB_SCRIPT_NAME =	pudb3
.else
PUDB_SCRIPT_NAME =	pudb
.endif

SUBST_VARS +=		PUDB_SCRIPT_NAME

.include <bsd.port.mk>
