# $OpenBSD: Makefile,v 1.11 2020/07/03 21:12:48 sthen Exp $

COMMENT =		Python Build Reasonableness

MODPY_EGG_VERSION =	4.0.2
DISTNAME =		pbr-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^/py-/}
CATEGORIES =		devel
REVISION =		1

HOMEPAGE =		https://github.com/openstack-dev/pbr

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

TEST_DEPENDS =	devel/py-testtools${MODPY_FLAVOR} \
		devel/py-virtualenv${MODPY_FLAVOR}

# also needs testscenarios
NO_TEST =	Yes

post-install:
	mv ${PREFIX}/bin/pbr ${PREFIX}/bin/pbr${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
