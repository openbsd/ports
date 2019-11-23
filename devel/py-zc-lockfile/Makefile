# $OpenBSD: Makefile,v 1.1.1.1 2019/11/23 09:18:15 bket Exp $

COMMENT =		basic inter-process locks

MODPY_EGG_VERSION =	2.0
DISTNAME =		zc.lockfile-${MODPY_EGG_VERSION}
PKGNAME =		py-zc-lockfile${DISTNAME}

CATEGORIES =		devel

# ZPL 2.1
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

# A newer py-zopetesting (which also supports python3) is needed.
NO_TEST =		Yes

.include <bsd.port.mk>
