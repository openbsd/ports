# $OpenBSD: Makefile,v 1.1.1.1 2020/07/15 20:36:08 kn Exp $

COMMENT =		progress bar for Python

MODPY_EGG_VERSION =	4.47.0
DISTNAME =		tqdm-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/tqdm/tqdm

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# MIT/MPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

# The test suite has an idiosyncratic runner and some multi-threaded tests
# sometimes fail.

.include <bsd.port.mk>
