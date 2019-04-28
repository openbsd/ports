# $OpenBSD: Makefile,v 1.5 2019/04/28 20:51:34 sthen Exp $

COMMENT =		Python utility / library to sort Python imports

MODPY_EGG_VERSION =	4.2.15
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

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/isort{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
