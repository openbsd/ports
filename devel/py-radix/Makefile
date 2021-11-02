# $OpenBSD: Makefile,v 1.22 2021/11/02 00:01:00 sthen Exp $

COMMENT =		Radix tree implementation for Python

MODPY_EGG_VERSION = 	0.10.0
DISTNAME =		py-radix-${MODPY_EGG_VERSION}
CATEGORIES=		devel net
REVISION =		5

HOMEPAGE =		https://github.com/mjschultz/py-radix/

MAINTAINER =		Job Snijders <job@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS=		python3
FLAVOR=			python3

MODULES =		lang/python
WANTLIB +=		${MODPY_WANTLIB} pthread

TEST_DEPENDS =		devel/py-coverage${MODPY_FLAVOR}

# Tests aren't included in pypi tarball for now
# https://github.com/mjschultz/py-radix/pull/43

.include <bsd.port.mk>
