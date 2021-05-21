# $OpenBSD: Makefile,v 1.20 2021/05/21 19:50:28 kmos Exp $

COMMENT =		Radix tree implementation for Python

MODPY_EGG_VERSION = 	0.10.0
DISTNAME =		py-radix-${MODPY_EGG_VERSION}
CATEGORIES=		devel net
REVISION =		3

HOMEPAGE =		https://github.com/mjschultz/py-radix/

MAINTAINER =		Job Snijders <job@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS=		python3
FLAVOR?=

MODULES =		lang/python
WANTLIB +=		${MODPY_WANTLIB} pthread

TEST_DEPENDS =		devel/py-coverage${MODPY_FLAVOR}

# Tests aren't included in pypi tarball for now
# https://github.com/mjschultz/py-radix/pull/43

.include <bsd.port.mk>
