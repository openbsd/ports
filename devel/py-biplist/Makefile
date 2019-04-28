# $OpenBSD: Makefile,v 1.2 2019/04/28 20:51:30 sthen Exp $

COMMENT =	binary plist parser/generator for Python

MODPY_EGG_VERSION =	1.0.3
DISTNAME =		biplist-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR} \
			devel/py-coverage${MODPY_FLAVOR}

.include <bsd.port.mk>
