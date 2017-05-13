# $OpenBSD: Makefile,v 1.3 2017/05/13 08:51:57 shadchin Exp $

COMMENT =		backport of the lru_cache from functools

MODPY_EGG_VERSION =	1.4
DISTNAME =		backports.functools_lru_cache-${MODPY_EGG_VERSION}
PKGNAME =		py-backports-functools-lru-cache-${MODPY_EGG_VERSION}
CATEGORIES =		devel

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-backports

BUILD_DEPENDS =		devel/py-setuptools_scm

TEST_DEPENDS =		devel/py-test

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest tests

.include <bsd.port.mk>
