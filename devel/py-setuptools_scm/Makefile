# $OpenBSD: Makefile,v 1.23 2022/02/26 22:17:51 sthen Exp $

COMMENT =		plugin to manage your versions by scm tags

# >=6.1 needs py-tomli
MODPY_EGG_VERSION =	6.0.1
DISTNAME =		setuptools_scm-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH} \
			devel/git \
			devel/mercurial \
			devel/py-pip${MODPY_FLAVOR}

# >=6.1 needs py-tomli
RUN_DEPENDS +=		textproc/py-toml${MODPY_FLAVOR}

.include <bsd.port.mk>
