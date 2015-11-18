# $OpenBSD: Makefile,v 1.3 2015/11/18 16:41:34 sthen Exp $

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

.if ! ${FLAVOR:Mpython3}
# No py3 versions yet:
TEST_DEPENDS =	devel/py-virtualenv \
		devel/py-testtools
# also needs testscenarios
.else
NO_TEST =	Yes
.endif

post-install:
	mv ${PREFIX}/bin/pbr ${PREFIX}/bin/pbr${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
