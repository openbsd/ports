# $OpenBSD: Makefile,v 1.3 2019/04/28 20:51:36 sthen Exp $

COMMENT =	setuptools_scm plugin for git archives

MODPY_EGG_VERSION =	1.0
DISTNAME =	setuptools_scm_git_archive-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	devel

HOMEPAGE =	https://github.com/Changaco/setuptools_scm_git_archive/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
