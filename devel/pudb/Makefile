# $OpenBSD: Makefile,v 1.2 2015/09/21 19:48:52 jca Exp $

COMMENT =		console-based visual debugger for Python

MODPY_EGG_VERSION =	2015.3
REVISION =		0
DISTNAME =		pudb-${MODPY_EGG_VERSION}
PKGNAME =		py-pudb-${MODPY_EGG_VERSION}

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

PUDB_MODPY_BIN_SUFFIX =	${MODPY_BIN_SUFFIX:S/-//}

SUBST_VARS +=		PUDB_MODPY_BIN_SUFFIX

.include <bsd.port.mk>
