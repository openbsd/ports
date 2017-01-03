# $OpenBSD: Makefile,v 1.5 2017/01/03 19:19:48 landry Exp $

COMMENT =		python style guide checker

MODPY_EGG_VERSION =	2.2.0
DISTNAME =		pycodestyle-${MODPY_EGG_VERSION}
PKGNAME =		py-codestyle-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/PyCQA/pycodestyle

MAINTAINER=		Alexandr Shadchin <shadchin@openbsd.org>

# Expat
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/pycodestyle ${PREFIX}/bin/pycodestyle${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
