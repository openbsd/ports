# $OpenBSD: Makefile,v 1.3 2021/11/02 00:02:37 sthen Exp $

COMMENT =		python package for parsing and building CSS

CATEGORIES =		textproc

MODPY_EGG_VERSION =	1.0.6
DISTNAME =		css-parser-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
MODPY_PI =		Yes
REVISION =		0

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

# No tests present in pypi tarball
NO_TEST =		yes

.include <bsd.port.mk>
