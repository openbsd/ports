# $OpenBSD: Makefile,v 1.3 2017/01/03 19:19:48 landry Exp $

COMMENT =		Python utility / library to sort Python imports

MODPY_EGG_VERSION =	4.2.5
DISTNAME =		isort-${MODPY_EGG_VERSION}
PKGNAME =		py-isort-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/timothycrosley/isort

MAINTAINER=		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

post-install:
	mv ${PREFIX}/bin/isort ${PREFIX}/bin/isort${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
