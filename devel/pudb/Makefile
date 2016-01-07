# $OpenBSD: Makefile,v 1.5 2016/01/07 21:35:27 jasper Exp $

COMMENT =		console-based visual debugger for Python

MODPY_EGG_VERSION =	2015.4.1
DISTNAME =		pudb-${MODPY_EGG_VERSION}
PKGNAME =		py-pudb-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		devel

MAINTAINER =		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-urwid${MODPY_FLAVOR}>=1.1.1 \
			textproc/py-pygments${MODPY_FLAVOR}

TEST_DEPENDS =          ${RUN_DEPENDS}

FLAVORS =		python3
FLAVOR ?=

.if ${FLAVOR:Mpython3}
PUDB_SCRIPT_NAME =	pudb3
.else
PUDB_SCRIPT_NAME =	pudb
.endif

SUBST_VARS +=		PUDB_SCRIPT_NAME

.include <bsd.port.mk>
