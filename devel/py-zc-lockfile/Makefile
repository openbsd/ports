# $OpenBSD: Makefile,v 1.3 2021/05/21 19:50:31 kmos Exp $

COMMENT =		basic inter-process locks

MODPY_EGG_VERSION =	2.0
DISTNAME =		zc.lockfile-${MODPY_EGG_VERSION}
PKGNAME =		py-zc-lockfile${DISTNAME}
REVISION =		1

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
