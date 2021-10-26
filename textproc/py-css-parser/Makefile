# $OpenBSD: Makefile,v 1.2 2021/10/26 19:29:05 sthen Exp $

COMMENT =		python package for parsing and building CSS

CATEGORIES =		textproc

MODPY_EGG_VERSION =	1.0.6
DISTNAME =		css-parser-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
MODPY_PI =		Yes

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

# No tests present in pypi tarball
NO_TEST =		yes

.include <bsd.port.mk>
