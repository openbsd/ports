# $OpenBSD: Makefile,v 1.1.1.1 2019/04/03 02:30:05 bentley Exp $

COMMENT =		python number humanization utilities

MODPY_EGG_VERSION =	0.5.1
DISTNAME =		humanize-${MODPY_EGG_VERSION}
PKGNAME =		py-humanize-${MODPY_EGG_VERSION}

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/jmoiron/humanize

MAINTAINER =		Kurt Mosiejczuk <kurt@cranky.work>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

# Tests aren't included in pypi distribution
NO_TEST =		Yes

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
