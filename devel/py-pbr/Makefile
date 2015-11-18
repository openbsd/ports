# $OpenBSD: Makefile,v 1.2 2015/11/18 12:32:39 ajacoutot Exp $

COMMENT =		Python Build Reasonableness

MODPY_EGG_VERSION =	1.8.1
DISTNAME =		pbr-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^/py-/}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/openstack-dev/pbr
MODPY_PI =		Yes

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

TEST_DEPENDS =	devel/py-virtualenv${MODPY_FLAVOR}

.if ! ${FLAVOR:Mpython3}
TEST_DEPENDS += devel/py-testtools
.endif

# also needs testscenarios
NO_TEST =	Yes

post-install:
	mv ${PREFIX}/bin/pbr ${PREFIX}/bin/pbr${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
