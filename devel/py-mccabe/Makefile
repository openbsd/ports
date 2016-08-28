# $OpenBSD: Makefile,v 1.5 2016/08/28 14:23:19 shadchin Exp $

COMMENT =		McCabe complexity checker for Python

MODPY_EGG_VERSION =	0.5.2
DISTNAME =		mccabe-${MODPY_EGG_VERSION}
PKGNAME =		py-mccabe-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/flintwork/mccabe

MAINTAINER =		Bertrand Janin <b@janin.com>

# Expat
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
