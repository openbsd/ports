# $OpenBSD: Makefile,v 1.2 2016/10/23 13:38:36 shadchin Exp $

COMMENT =		markdown parser for Python

MODPY_EGG_VERSION =	0.7.3
DISTNAME =		mistune-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/lepture/mistune

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
