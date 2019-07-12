# $OpenBSD: Makefile,v 1.13 2019/07/12 20:45:17 sthen Exp $

COMMENT =		console-based visual debugger for Python

MODPY_EGG_VERSION =	2018.1
DISTNAME =		pudb-${MODPY_EGG_VERSION}
PKGNAME =		py-pudb-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-urwid${MODPY_FLAVOR}>=1.1.1 \
			textproc/py-pygments${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.if ${FLAVOR:Mpython3}
PUDB_SCRIPT_NAME =	pudb3
.else
PUDB_SCRIPT_NAME =	pudb
.endif

SUBST_VARS +=		PUDB_SCRIPT_NAME

.include <bsd.port.mk>
