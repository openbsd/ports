# $OpenBSD: Makefile,v 1.5 2020/07/03 21:12:49 sthen Exp $

COMMENT =	setuptools_scm plugin for git archives

MODPY_EGG_VERSION =	1.0
DISTNAME =	setuptools_scm_git_archive-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	2

CATEGORIES =	devel

HOMEPAGE =	https://github.com/Changaco/setuptools_scm_git_archive/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
