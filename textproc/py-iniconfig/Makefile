# $OpenBSD: Makefile,v 1.2 2021/12/10 08:02:18 ajacoutot Exp $

COMMENT =	brain-dead simple config-ini parsing

MODPY_EGG_VERSION =	1.1.1

DISTNAME =	iniconfig-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	textproc

HOMEPAGE =	http://github.com/RonnyPfannschmidt/iniconfig

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =	python3
FLAVOR =	python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

BUILD_DEPENDS=		devel/py-setuptools_scm${MODPY_FLAVOR}

.include <bsd.port.mk>
