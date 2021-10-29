# $OpenBSD: Makefile,v 1.6 2021/10/29 15:38:41 sthen Exp $

COMMENT =	binary plist parser/generator for Python

MODPY_EGG_VERSION =	1.0.3
DISTNAME =		biplist-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =		devel

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =	python3

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR} \
			devel/py-coverage${MODPY_FLAVOR}

.include <bsd.port.mk>
