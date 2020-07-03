# $OpenBSD: Makefile,v 1.4 2020/07/03 21:12:41 sthen Exp $

COMMENT =	binary plist parser/generator for Python

MODPY_EGG_VERSION =	1.0.3
DISTNAME =		biplist-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR} \
			devel/py-coverage${MODPY_FLAVOR}

.include <bsd.port.mk>
