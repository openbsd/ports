# $OpenBSD: Makefile,v 1.15 2020/07/03 21:12:49 sthen Exp $

COMMENT =		plugin to manage your versions by scm tags

MODPY_EGG_VERSION =	3.3.3
DISTNAME =		setuptools_scm-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH} \
			devel/git \
			devel/mercurial \
			devel/py-pip${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
