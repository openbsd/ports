# $OpenBSD: Makefile,v 1.4 2019/09/09 21:36:14 kmos Exp $

COMMENT =		python number humanization utilities

MODPY_EGG_VERSION =	0.5.1
DISTNAME =		humanize-${MODPY_EGG_VERSION}
PKGNAME =		py-humanize-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/jmoiron/humanize

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

# Tests aren't included in pypi distribution
NO_TEST =		Yes

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
