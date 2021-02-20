# $OpenBSD: Makefile,v 1.2 2021/02/20 17:34:17 sthen Exp $

COMMENT =		extends Python Rich library functionality

MODPY_EGG_VERSION =	1.2.6
DISTNAME =		enrich-${MODPY_EGG_VERSION}
PKGNAME =		py-enrich-${MODPY_EGG_VERSION}

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =		python3

MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/py-setuptools_scm_git_archive${MODPY_FLAVOR} \
			textproc/py-toml${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-rich${MODPY_FLAVOR}

.include <bsd.port.mk>
