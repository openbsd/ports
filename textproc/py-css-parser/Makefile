# $OpenBSD: Makefile,v 1.1.1.1 2020/09/19 07:38:58 solene Exp $

COMMENT =		python package for parsing and building CSS

CATEGORIES =		textproc

MODPY_EGG_VERSION =	1.0.4
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
